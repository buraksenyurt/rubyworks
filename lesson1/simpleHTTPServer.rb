#Bsait bir "Hello World" HTTP Server

require "socket" #TCPServer ve TCPSocket siniflari burada yer almakta

server=TCPServer.new('localhost',8082)

loop do
	socket=server.accept
	request=socket.gets #gelen talebin ilk satiri okunuyor
	STDERR.puts request #log' lar console' a yazilacak
	
	response="<b1>Hello Rubyist!</b1><br/><i>This is xion control. Wellcome home</i>"
	socket.print "HTTP/1.1 200 OK\r\n" +
				"Content-Type: text/html\r\n" +
				"Content-Length: #{response.bytesize}\r\n" +
				"Connection: close\r\n"
	socket.print "\r\n"	#HTTP protokolu geregi bir alt satira gecilmesi gerekiyor
	socket.print response #asil body mesaji yazdiriliyor
	socket.close #sokect baglantisi kapatiliyor
end
