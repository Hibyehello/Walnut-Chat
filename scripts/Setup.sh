#!/bin/bash

os_name=$(uname -s)

if [ "$1" = "gui" ];
  then
    premake_file=Build.lua
else
    premake_file=Build-Headless.lua
fi

echo $premake_file

pushd ..
Walnut/vendor/bin/premake/$os_name/premake5 --cc=clang --file=$premake_file gmake2
popd
