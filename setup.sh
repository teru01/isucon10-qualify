#!/bin/bash

set -ux

cd "${0%/*}"

dir=perf/$(date +%Y-%m-%d-%H-%M-%S)
mkdir $dir

echo $dir
