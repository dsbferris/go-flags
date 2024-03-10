#!/bin/bash

set -e

echo '# linux arm7'
GOARM=7 GOARCH=arm GOOS=linux go build -C internal
echo '# linux arm5'
GOARM=5 GOARCH=arm GOOS=linux go build -C internal
echo '# windows 386'
GOARCH=386 GOOS=windows go build -C internal
echo '# windows amd64'
GOARCH=amd64 GOOS=windows go build -C internal
echo '# darwin'
GOARCH=amd64 GOOS=darwin go build -C internal
echo '# freebsd'
GOARCH=amd64 GOOS=freebsd go build -C internal
echo '# aix ppc64'
GOARCH=ppc64 GOOS=aix go build -C internal
echo '# solaris amd64'
GOARCH=amd64 GOOS=solaris go build -C internal
