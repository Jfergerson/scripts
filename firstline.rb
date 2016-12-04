#!/usr/bin/env ruby
#needs moreutils for sponge
for i in 0..10 
	`tail -n +2 output#{i}.txt | sponge output#{i}.txt`
end
