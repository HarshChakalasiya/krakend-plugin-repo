#!/bin/sh

go clean -modcache
go clean -cache

apk add --no-cache git

go build -buildmode=plugin -o custom-plugin.so .