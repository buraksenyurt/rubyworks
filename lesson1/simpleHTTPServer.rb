#Bsait bir "Hello World" HTTP Server

require "socket" #TCPServer ve TCPSocket siniflari burada yer almakta

server=TCPServer.new('localhost',8082)

begin

while(session=server.accept)
	request=session.gets #gelen talebin ilk satiri okunuyor
	STDERR.puts request #log' lar console' a yazilacak
	
	response="<b1>Hello Rubyist!</b1><br/><i>This is xion control. Wellcome home</i>"
	session.print "HTTP/1.1 200 OK\r\n" +
				"Content-Type: text/html\r\n" +
				"Content-Length: #{response.bytesize}\r\n" +
				"Connection: close\r\n"
	session.print "\r\n"	#HTTP protokolu geregi bir alt satira gecilmesi gerekiyor
	session.print response #asil body mesaji yazdiriliyor
	session.close #sokect baglantisi kapatiliyor
end

rescue Errno::EPIPE
  STDERR.puts "Connection broke!"
  end
