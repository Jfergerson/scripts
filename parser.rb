#!/usr/bin/env ruby
#gets every 4 lines after the first 3
x = 0
start =0;
for i in 0 .. 10
#	`tail -n +2 output#{i}.txt | sponge output#{i}.txt`
	IO.foreach("output#{i}.txt") do |line|
		if x>2 then
			for j in 3 .. 11
				print(line.split()[j], ", ")
			end
			print(line.split()[12],"\n")
		end
		x +=1
		x = 0 if x == 6
	end
end
