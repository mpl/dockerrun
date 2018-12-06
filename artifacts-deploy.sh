#!/bin/bash

# Since it happens in the first run, /foo-d ends up being saved in the base image,
# but nothing else after ever ends up being committed to an image.
if [ ! -d /foo-d ]; then
	mkdir /foo-d
	echo step0-d
	exit 0
fi

# So we start from here on every run that starts with the base image, i.e. every
# run from the second included.
if [ ! -d /foo-d/bar ]; then
	mkdir /foo-d/bar
	echo step1-d
	exit 0
fi

# This step below should never happen.
if [ ! -d /foo-d/bar/baz ]; then
	mkdir /foo-d/bar/baz
	echo step2-d
	exit 0
fi
