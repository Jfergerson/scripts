#!/usr/bin/env ruby
`mpstat 1 10000 > output &`
var = `ps -ef | grep "mpstat | awk '{print $2'}'`
temp = `hackbench -l 10000`
`kill #{var.split("\n")[0]}`
