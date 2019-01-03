package main

import (
	"flag"
	"time"
)

var (
	flagSleep = flag.Int("d", 600, "sleep duration")
)

func main() {
	flag.Parse()
	println("sleeping for", *flagSleep, "seconds")
	time.Sleep(time.Duration(*flagSleep)*time.Second)
}
