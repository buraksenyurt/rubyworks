require 'test/unit'

class Product

	attr_accessor :title, :listPrice, :category
	
	def initialize(title,listPrice,category)
	
	       raise ArgumentError,"#{listPrice} must be greater than 10" unless listPrice>10
	       @title=title
	       @listPrice=listPrice
	       @category=category
		       
	end
end
class ProductTest < Test::Unit::TestCase             
                
	TITLE,LIST_PRICE,CATEGORY="Head First Design Patterns",39.99,"Book"            
	
	def setup
	       @product=Product.new(TITLE,LIST_PRICE,CATEGORY)
	end        
	
	def testForTitle
	       assert_not_nil @product.title
	       assert_equal TITLE,@product.title
	end
	
	def testForListPrice
	       assert_equal 39.99,@product.listPrice
	       assert_raise(ArgumentError){Product.new(TITLE,9.99,CATEGORY)}
	end
	
	def testForCategory
	       assert_send([["Book","Computer","Camera"], :include?, @product.category]) 
	       assert_send([["Book","Computer","Camera"], :include?, Product.new(TITLE,LIST_PRICE,"Unknown").category]) 
	end
                
end
