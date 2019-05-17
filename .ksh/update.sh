#!/bin/sh

url=http://fastly.cdn.openbsd.org/pub/OpenBSD/snapshots/packages/amd64/index.txt
curl -sq ${url} | awk '{ print $10 }' > ~/.ksh/complete_pkg
