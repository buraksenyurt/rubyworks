=begin
struct ve open struct kavramlari
=end

#bir struct nesne tanimlarken Struct.new dan yaralaniriz. O satirda struct'in icerecegi alanlari da tanimlayabiliriz.
#sonrasinda degiskenmis gibi kullaniriz
require "ostruct" #openstruct ile sonsuz sayida nitelik barindiracak struct degiskenleri tanimlayabiliriz

player=Struct.new :firstName,:lastName,:level
dam=player.new()
dam.firstName="jan kulod van"
dam.lastName="dam"
dam.level=900
puts "#{dam.lastName}, #{dam.firstName}-[#{dam.level}]"

obiWan=player.new("kenobi","obi wan",850)
puts "#{obiWan.lastName}, #{obiWan.firstName}-[#{obiWan.level}]"
obiWan.each{|o|puts o}
obiWan.each_pair{|key,value| puts "#{key}->#{value}"}
puts obiWan[:firstName]

# dilersek do end arasina struct ile kullanilabilecek metodlar da yazabiliriz
book=Struct.new :title,:price,:category do
  def getInfo
    "#{title},#{price},#{category}"
  end
  def setNewPrice(value)
    price=value
  end
end
tehlikeliOyunlar=book.new
tehlikeliOyunlar.title="Tehlikeli Oyunlar"
tehlikeliOyunlar.price=50
tehlikeliOyunlar.category="Turk Edebiyati"
puts tehlikeliOyunlar.getInfo
tehlikeliOyunlar.setNewPrice(55.99) #bu metod ile yapilan degisiklik price değişkenine yansimamistir.
puts tehlikeliOyunlar.getInfo #dikkat

parameters=OpenStruct.new()
parameters.connection="provider=mysql..."
parameters.username="bsenyurt"
parameters.password="****"
parameters.timeout=6000
puts parameters.timeout
parameters.ftpAddress="ftp://localhost/fileServer"
puts parameters.ftpAddress
parameters.each_pair{|key,value| puts "#{key}->#{value}"}

class Employee
  attr_accessor :firstName,:lastName, :address
  Address = Struct.new(:street, :city, :country, :postal_code)

  def initialize(firstName,lastName, addressInfo)
    @firstName,@lastName=firstName,lastName
    @address = Address.new(addressInfo[:street], addressInfo[:city], addressInfo[:country], addressInfo[:postal_code])
  end

end

sitiv = Employee.new("Sitiv","Jobs", {
  street: "hevan street",
  city: "Second Parallel New York",
  country: "Beauty Country",
  postal_code: "HVN-1001"
})

puts sitiv.address.inspect