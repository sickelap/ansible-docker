#!/bin/sh
set -eu

docker build -t ${1:-'ansible'} .
