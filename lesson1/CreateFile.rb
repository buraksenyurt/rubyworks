#File IO Process
class Song	
	def initialize(name,singer)
		@name=name
		@singer=singer
	end
	
	def to_s()
		"#{@name}-#{@singer}"
	end
end

#Create Song instances
songs=[]
song1=Song.new('Broken Wings','Mr.Mister')
songs<<song1

song2=Song.new('Footloose','Kenny Loggins')
songs<<song2

song3=Song.new('Beat It','Michael Jackson')
songs<<song3

song4=Song.new('Everywhere','Fleetwood Mac')
songs<<song4

song5=Song.new('Never Too Much','Luther Vandross')
songs<<song5

#Write songs to file
open('songs.txt','w') do |file|
	songs.each{|s|
		file.puts(s.to_s)
		}
end

if File.file? 'songs.txt' 
	#Read songs file
	open('songs.txt') do |file|
		file.each{|l| puts l}
	end
end