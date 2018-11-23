#!/bin/bash

echo stage0
if [ ! -d /foo ]; then
	mkdir /foo
	exit 0
fi

echo stage1
if [ ! -d /foo/bar ]; then
	mkdir /foo/bar
	exit 0
fi

echo stage2
if [ ! -d /foo/bar/baz ]; then
	mkdir /foo/bar/baz
	exit 0
fi

echo stage3
if [ ! -d /foo/bar/baz/yo ]; then
	mkdir /foo/bar/baz/yo
	exit 0
fi

echo stage4

