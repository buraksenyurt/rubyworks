# encoding: ISO-8859-9
 
require 'yaml'
 
=begin
 
YAML(Yet Another Markup Language) ve Binary Serileştirme
 
=end
 
  
 
class Product
 
attr_accessor :ID
 
attr_accessor :Title
 
attr_accessor :Price
 
attr_accessor :Measurement
 
  
 
def initialize(id,title,price,measure)
 
@id,@title,@price,@measure=id,title,price,measure
 
end
 
  
 
def to_s
 
"#{@id}-#{@title}(#{@price})#{@measure.to_s}"
 
end
 
end
 
  
 
class Measurement
 
attr_accessor :Type
 
attr_accessor :Unit
 
  
 
def initialize(type,unit)
 
@type,@unit=type,unit
 
end
 
  
 
def to_s
 
"[#{@type}:#{@unit}]"
 
end
 
end
 
  
 
if __FILE__==$0
 
  
 
pcMeasurement=Measurement.new "adet",1
 
pc=Product.new 1001,"EyçPi Pavilyon 2000",1500,pcMeasurement
 
  
 
mouseMeasurement=Measurement.new "adet",1
 
mouse=Product.new 2002,"Mikropsoft Wireless Mouse",50,mouseMeasurement
 
  
 
lgoMeasurement=Measurement.new "parça",845
 
lgo=Product.new 3045,"Lego Siti - Betmen",150,lgoMeasurement
 
  
 
basket=[pc,mouse,lgo]
 
  
 
yamlS=YAML::dump(basket)
 
yamlFile=File.new("Products.yaml","w")
 
yamlFile.syswrite yamlS
 
puts yamlS
 
  
 
yamlDs=YAML::load(yamlS)
 
puts "YAML Deserialized object's class type: #{yamlDs.class}"
 
puts yamlDs[2].to_s
 
  
 
binaryS=Marshal::dump(basket)
 
binaryFile=File.new("Products.bin","w")
 
binaryFile.syswrite binaryS
 
puts binaryS
 
  
 
binaryDs=Marshal::load(binaryS)
 
puts "Binary Deserialized object's class type: #{binaryDs.class}"
 
puts binaryDs[1].to_s
 
  
 
end
