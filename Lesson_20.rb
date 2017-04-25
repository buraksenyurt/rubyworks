=begin
ilkel bir TCP sunucusu yazalım
=end

require 'socket'

server=TCPServer.open(8085) #8085 portu üzerinden dinlemeye başlıyoruz
puts "localhost:8085 is open"
loop{ #istemci taleplerini bu uygulama sonlanana kadar sonsuz bir döngüde dinliyoruz
  Thread.start(server.accept) do |client| #Multi-client desteği için Thread açıyoruz. Böylece aynı anda n sayıda talebi ele alma şansımız var  
    request=""
    while(line=client.gets) && (line!="\r\n") #açılan sokete istemcilerden request'ler geldikçe bunları satır bazında okuyoruz
      request+=line
      client.puts "You send me #{line}" #socket.puts ile aslında istemci tarafına içerik basmaktayız.
    end
    puts request #istemcinin sunucu tarafında oluşturduğu komple içeriği basıyoruz.
    client.close
  end 
}