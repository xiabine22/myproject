#!/bin/bash
root_path=$(cd "$(dirname "$0")"; pwd)
project_path=${root_path%/*}
export GOPATH=${project_path}
go get github.com/astaxie/beego

rm -rf $project_path/bin
mkdir -p $project_path/bin
cd $project_path/src/myproject
go build -a -o $project_path/bin/myproject
cp -r $project_path/src/myproject/conf $project_path/bin
cp -r $project_path/src/myproject/views $project_path/bin

