=begin
classes
=end

class Product
  attr_accessor :name,:price
  attr_reader :productId
  
  def initialize(name,price)
    @productId=Random.rand(1000)
    @name,@price=name,price
  end
  
  private
  def findStockLevel
    1
  end
  
  def to_s
    "[#{@productId}]-#{@name},#{@price}"
  end
end

lgPhone=Product.new("LG Mobile Phone",899.99)
puts lgPhone
# lgPhone.findStockLevel #private metod
rubyBook=Product.new("Ruby ile programlama",35)
puts rubyBook

#sınıflarda basit türetme örneği
class Vehicle
  attr_accessor :id
  
  protected
  def checkEngine
    puts "engine checking"
  end
end

class Tank<Vehicle
  attr_accessor :title,:color
  
  def to_s
    "#{@id}-#{@title},#{@color}"
  end
  
  def move(x,y)
    checkEngine
    puts "moving to #{x}:#{y}"
  end
end

abraams=Tank.new()
abraams.id=102394
abraams.title="M1-T"
abraams.color="Black"
puts abraams.to_s()
abraams.move(100,300)