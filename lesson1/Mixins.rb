module Common
 
def getLength(content)
 
puts "calculate content length"
 
end
 
def getBytes(content)
 
puts "content's byte array"
 
end
 
end
 
module Zip
 
def gzip(content,zipAlgo)
 
puts "zipping"
 
end
 
def gunzip(content,zipAlgo)
 
puts "unzipping"
 
end
 
end
 
module Encryption
 
def sign(signature,content)
 
puts "file sign operation"
 
end
 
def encrypt(algo,content)
 
puts "encrypting"
 
end
 
def decrypt(algo,content)
 
puts "encrypting"
 
end
 
end
 
class CaseFile
 
include Zip
 
include Encryption
 
include Common
 
 
 
def readFile(path)
 
puts "Read File"
 
end
 
end
 
class Message
 
extend Zip
 
extend Encryption
 
end
 
if __FILE__==$0
 
 
 
#include (Instance Methods)
 
fl=CaseFile.new()
 
fl.getLength("some content")
 
fl.gzip("winrar","somecontent")
 
fl.gunzip("winrar","somecontent")
 
fl.sign("X509","somecontent")
 
fl.encrypt("Rijndael","some other content")
 
fl.decrypt("Rijndael","some other content")
 
fl.readFile("c:\someFile.txt")
 
puts
 
#extend (Class Methods)
 
Message.gzip("winrar","somecontent")
 
Message.gunzip("winrar","somecontent")
 
Message.sign("X509","somecontent")
 
end
