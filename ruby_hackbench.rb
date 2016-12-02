#!/usr/bin/env ruby
`mpstat 1 10000 > output.txt &`
puts "######make sure mpstat is running"
puts `ps -ef | grep mpstat`
var = `ps -ef | grep mpstat | awk '{print $2;}'`
puts "######running hackbench"
temp = `hackbench -l 10000`
`kill #{var.split("\n")[0]}`
puts "######make sure mpstat is not running"
puts `ps -ef | grep mpstat`
