#!/bin/bash

# Since it happens in the first run, /foo ends up being saved in the base image,
# but nothing else after ever ends up being committed to an image.
if [ ! -d /foo ]; then
	mkdir /foo
	echo step0
	exit 0
fi

# So we start from here on every run that starts with the base image, i.e. every
# run from the second included.
if [ ! -d /foo/bar ]; then
	mkdir /foo/bar
	echo step1
	exit 0
fi

# This step below should never happen.
if [ ! -d /foo/bar/baz ]; then
	mkdir /foo/bar/baz
	echo step2
	exit 0
fi
