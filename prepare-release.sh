#!/bin/bash
# compile lobster
export GOPATH=`pwd`
go build src/github.com/LunaNode/lobster/cmd/lobster.go

# copy files
cp src/github.com/LunaNode/lobster/INSTALL .
cp src/github.com/LunaNode/lobster/LICENSE .
# (skip notice, since we need to mention other libraries)
cp src/github.com/LunaNode/lobster/README .
cp src/github.com/LunaNode/lobster/schema.sql .
cp src/github.com/LunaNode/lobster/lobster.example* .
rm -r assets docs tmpl
cp -r src/github.com/LunaNode/lobster/assets/ assets/
cp -r src/github.com/LunaNode/lobster/docs/ docs/
cp -r src/github.com/LunaNode/lobster/tmpl/ tmpl/

# fetch files
rm -rf novnc
git clone https://github.com/kanaka/noVNC.git novnc
rm -rf novnc/.git
