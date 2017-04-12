class Product
  attr_accessor :name,:price
  attr_reader :id
  
  def initialize(name,price)
    @name,@price=name,price
    @id=Random.rand(10000)
  end
  
  def to_s
    "[#{@id}]-#{@name}-(#{price})"
  end
end

class Category
  attr_accessor :name,:description
  
  def initialize(name,description)
    @name,@description=name,description
  end
  
  def to_s
    "#{@name}-#{@description}"
  end
end