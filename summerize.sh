#!/bin/bash

set -ux

cd "${0%/*}"

dir="perf/${1%/}"
cp kataribe.toml $dir
sudo mv webapp/logs-nginx/access.log $dir
sudo mv webapp/logs-mysql/mysql-slow.log $dir
sudo chown -R $USER:$GROUPS $dir
cat $dir/access.log | kataribe > $dir/result.txt

pt-query-digest $dir/mysql-slow.log > $dir/digest.txt
