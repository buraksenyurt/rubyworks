# encoding: ISO-8859-9
 
require 'json'
 
=begin
 
Aşağıdaki kod parçasında kullanıcı tanımlı bir tipe ait
 
dizinin JSON formatına serileştirilmesi, fiziki bir dosyaya yazılması
 
ve dosyadan okunan string içeriğin(JSON tipinde) tekrar nesnel 
 
hale getirilmesi işlemleri ele alınmaktadır.
 
=end
 
class Person
 
attr_accessor :name,:salary,:position
 
def initialize(name,salary,position)
 
@name=name
 
@salary=salary
 
@position=position
 
end
 
def to_json(*a)
 
{
 
"json_class" => self.class.name,
 
"data"       => {"name" => @name, "salary" => @salary,"position" => @position}
 
}.to_json(*a)
 
end
 
def self.json_create(object)
 
new(object["data"]["name"], object["data"]["salary"], object["data"]["position"])
 
end
 
def to_s
 
"#{@name}-(#{@salary}K),#{@position}"
 
end
 
end
 
  
 
if __FILE__==$0
 
  
 
burk=Person.new("burk",1000,"Developer")
 
tubi=Person.new("tubi",2000,"CEO")
 
matz=Person.new("metz",5500,"Compoany Owner")
 
employees=[burk,tubi,matz]
 
  
 
jsonContent = employees.to_json
 
puts jsonContent
 
  
 
employeeFile=File.new("Person.json","w")
 
employeeFile.syswrite jsonContent
 
  
 
fileConent=File.read("Person.json")
 
incomingArray=JSON.load(fileConent)
 
puts incomingArray.class
 
puts incomingArray[0].to_s
 
puts "#{incomingArray[1].name}-#{incomingArray[1].position}"
 
  
 
end
