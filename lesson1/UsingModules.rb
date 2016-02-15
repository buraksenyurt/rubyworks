$LOAD_PATH << '.'
 
require "Serializer"
 
 
 
module Grid
 
DEFAULT_PROVIDER="MONGODB"
 
DEFAULT_TIMEOUT=1000
 
include Serializer
 
  
 
def self.configure
 
puts "ortam #{DEFAULT_PROVIDER} icin set edildi"
 
end
 
  
 
class Connection
 
def self.connect(conStr)
 
puts "#{conStr} icin baglanti saglaniyor"
 
end
 
  
 
def self.disconnect(conStr)
 
puts "#{conStr} baglantisi kesiliyor"
 
end
 
end
 
  
 
module Cloud
 
def self.connectToService(url)
 
puts "#{url} adresine baglanti gerceklestirilecek"
 
end
 
  
 
def self.send(someData)
 
puts Serializer::serialize(someData)
 
puts Serializer::deserialize(someData)
 
end
 
end
 
end
 
 
 
if __FILE__==$0
 
 
 
puts Grid::DEFAULT_PROVIDER
 
Grid::configure
 
Grid::Cloud::connectToService("http://somedomain/someService.svc")
 
Grid::Cloud::send("Bir veri")
 
Grid::Connection.connect("myMongoDb connection")
 
Grid::Connection.disconnect("myMongoDb connection")
 
end
