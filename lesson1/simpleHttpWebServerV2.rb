require 'socket'
require 'uri'

server=TCPServer.new('localhost',8082) #taleplerin dinlenecegi makine:port

begin

	while(session=server.accept) #talep geldigi surece devam
		request=session.gets #Header bilgisini al
		STDERR.puts request	#ekrana bas
		request_uri  = request.split(" ")[1] #bosluklara gore ayirip talep edilen dosyayi bul
		path         = URI.unescape(URI(request_uri).path) #escape karakterleri cikart
		File.join('c:\\docs', path) #Fiziki yolu belirle
		ext = File.extname(path).split(".").last #dosya uzantisini al
		
		if File.exist?(path) && ext=="jpg" && !File.directory?(path) #dosya varsa uzanti dogruysa
			File.open(path, "rb") do |file| #dosyayi ac ve HTTP 200 OK paketini hazirla
				session.print "HTTP/1.1 200 OK\r\n" +
					   "Content-Type: image/jpeg\r\n" +
					   "Content-Length: #{file.size}\r\n" +
					   "Connection: close\r\n"
				session.print "\r\n"
				IO.copy_stream(file, session) #Resim icerigine ait byte array'i gonder
			end
		else #dosya bulunamadiysa HTTP 404 hatasini don
			message = "File not found\n"		
			session.print "HTTP/1.1 404 Not Found\r\n" +
						 "Content-Type: text/plain\r\n" +
						 "Content-Length: #{message.size}\r\n" +
						 "Connection: close\r\n"
			session.print "\r\n"
			session.print message
		end
		session.close #oturumu kapat
	end

rescue Errno::EPIPE
  STDERR.puts "Connection broke!"
  end
