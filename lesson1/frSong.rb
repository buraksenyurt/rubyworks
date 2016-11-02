#Get random song from a file
module Enumerable
	def getRandomLine
		line=nil
		each_with_index{|l,n|line=l if rand <1.0/(n*0.75)}
		return line.chomp if line
	end
end

songsFile=open('SomeAlbums.txt')
puts "CTRL-C for exit"
while 1==1
	puts songsFile.getRandomLine
	songsFile.rewind
	sleep 2
end