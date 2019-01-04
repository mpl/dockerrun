#!/bin/sh

# redirecting output so docker exec does not wait for it indefinitely.
go run sleeper/main.go > /dev/null 2>&1 &
echo "sleeper is in background"
