# Simple REST service
require 'sinatra'
require 'json'
require 'sqlite3'
 
#list all products
get '/products' do
    begin
        products=Array.new
        db=SQLite3::Database.open "AdventureWorks.db"
        db.results_as_hash=true;    
        rows=db.execute "Select product_id,title,list_price from Product"
        rows.each do |row|
            products << Product.new(row['product_id'],row['title'],row['list_price'])
        end
        products.to_json
    rescue SQLite3::Exception => excp
        excp
    ensure
        db.close if db
    end
end
 
#get specific product
get '/products/:id' do
    begin
        product=nil
        db=SQLite3::Database.open "AdventureWorks.db"
        db.results_as_hash=true;    
        row=db.get_first_row("Select product_id,title,list_price from Product where product_id=?",params[:id])
        if row!=nil
            product=Product.new(row['product_id'],row['title'],row['list_price'])  
            product.to_json
        else
            "Not Found"
        end
    rescue SQLite3::Exception => excp
        excp
    ensure
        db.close if db
    end
end
     
class Product
    attr_accessor:id
    attr_accessor:name
    attr_accessor:list_price
     
    def initialize(id,name,list_price)
        @id=id
        @name=name
        @list_price=list_price
    end
    def to_json(*a)
        {
            "json_class" => self.class.name,
            "data"       => {"id" => @id, "name" => @name, "list_price" => @list_price}
        }.to_json(*a)
    end
    def self.json_create(object)
        new(object["data"]["id"], object["data"]["name"],object["data"]["list_price"])
    end
     
    def to_s
        "#{@id}-#{@name}-#{@list_price}"
    end
end
