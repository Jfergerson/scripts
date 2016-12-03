#!/usr/bin/env ruby
for i in 0..10
	`mpstat -P ALL 1 10000 > output#{i}.txt &`
	puts "######make sure mpstat is running"
	puts `ps -ef | grep mpstat`
	var = `ps -ef | grep mpstat | awk '{print $2;}'`
	puts "######running hackbench"
	temp = `hackbench -l 10000`
	`kill #{var.split("\n")[0]}`
	puts "######make sure mpstat is not running"
	puts `ps -ef | grep mpstat`
end
