#Read file by chunk
class File
	def readChunk(size=4096)
		yield read(size) until eof?
	end	
end

if File.file? 'einstien_3.jpg'
	open('einstien_3.jpg') do |f|
		f.readChunk(1024){|c|puts c}
	end
end