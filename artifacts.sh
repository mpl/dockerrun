#!/bin/bash

if [ ! -d /foo ]; then
	mkdir /foo
	echo step0
	exit 0
fi

if [ ! -d /foo/bar ]; then
	mkdir /foo/bar
	echo step1
	exit 0
fi

if [ ! -d /foo/bar/baz ]; then
	mkdir /foo/bar/baz
	echo step2
	exit 0
fi

if [ ! -d /foo/bar/baz/yo ]; then
	mkdir /foo/bar/baz/yo
	echo step3
	exit 0
fi
