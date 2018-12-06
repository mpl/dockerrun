#!/bin/bash

echo step0
if [ ! -d /foo ]; then
	mkdir /foo
	exit 0
fi

echo step1
if [ ! -d /foo/bar ]; then
	mkdir /foo/bar
	exit 0
fi

echo step2
if [ ! -d /foo/bar/baz ]; then
	mkdir /foo/bar/baz
	exit 0
fi

echo step3
if [ ! -d /foo/bar/baz/yo ]; then
	mkdir /foo/bar/baz/yo
	exit 0
fi

