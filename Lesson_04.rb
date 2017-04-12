=begin
Hash veri yapısı ile çalışmak
=end

cemil={name:"fenerbahceli cemil",country:"Turkey",level:150}
puts cemil[:name]
puts cemil
puts cemil.fetch(:country)
puts cemil.fetch(:unknownKey,"Key not found in this hash") #eğer key yoksa varsayılan bir hata mesajı vermek
# puts cemil.fetch(:unknownKey)
cemil.store(:email,"cemil@fb.com.tr") #var olan hash'e yeni bir key:value eklemek
puts cemil
cemil.default="Not Found" #var olmayan key'ler için varsayılan mesaj belirlemek
puts cemil[:unknownKey]
 
mayk=Hash.new(0) #yeni bir hash oluşturmak
#new operatörü sonrası hash'e indeksleyici ile yeni elemanlar eklemek
mayk[:name]="mayk"
mayk[:email]="mayk@backtothefeature.us"
mayk[:level]=1940
puts mayk
puts mayk.length

cars={bmw31i:10000,hondaZ3:12500,bugattiVeyronV2:240000,anadolPickup:1000}
cars.keys.each{|k|  
  puts "#{k}'s prices is #{cars[k]}"
}

cars.values.each do |v|
  puts v
end

puts "Honda Z3 var mı? #{cars.key?(:hondaZ3)}"

#shift ile hash içindeki ilk eleman elde edilir ve bu eleman hash'den silinir
first=cars.shift()
puts "Shifted #{first}"
puts cars

#bir key olup olmadığını kontrol etmek için has_key? den yararlanabiliriz
puts "hondaZ3 var" if cars.has_key?(:hondaZ3)

newCars=cars.invert #invert ile hash içindeki key ve value değerleri yer değiştirir
puts newCars

# key? value? has_key? has_value? include? member? empty? 
#shift delete delete_if keep_if invert merge update merge! replace
