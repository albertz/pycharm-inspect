#!/bin/bash

set -xe

test -e pycharm && exit 0

name="pycharm-community-2018.3.5"
fn="$name.tar.gz"

wget -c "https://download.jetbrains.com/python/$fn"

tar -xzvf $fn
test -d $name
rm $fn
mv $name pycharm
