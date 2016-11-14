class TagInfo
	attr_accessor :track_name,:artist_name,:album_name,:year
	
	def initialize(track_name,artist_name,album_name,year)
		@track_name,@artist_name,@album_name,@year=track_name,artist_name,album_name,year
	end
	
	def to_s
		"#{@artist_name}-#{@album_name}-#{@track_name} (#{@year})"
	end
end

def get_tag_info(mp3)
	info=nil
	open(mp3) do |f|
		f.seek(-128,File::SEEK_END)
		if f.read(3)=="TAG"
			info=TagInfo.new(
				f.read(30),
				f.read(30),
				f.read(30),
				f.read(4)
			)
		end
	end
	return info
end

songs=Dir.glob("*.mp3")
songs.each{
	|s|
	puts get_tag_info(s).to_s
	}