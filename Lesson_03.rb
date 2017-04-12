=begin
Diziler ve temel dizi operasyonları
=end

def WriteLine(carArray)
  puts "---car's list---"
  carArray.each{|c|
    puts c.upcase
  }
  puts
end

cars=["bmw 316i","jaguar x70","mercedes slk","renault clio sport","mercede e200","bmw z3","audi a3","audi s8"]

#WriteLine(cars)

puts "First car #{cars.first}" #dizinin ilk elemanını bulmak
puts "Last car #{cars.last}" #dizinin son elemanını bulmak
puts "There is a #{cars.length} in the list" #dizinin uzunluğu
puts "There is a #{cars.count} in the list" #dizideki eleman sayısı

#belli bir kod bloğuna göre dizi içerisindeki elemanları filtreleme
WriteLine(cars.find_all{|c|c.length>10})
WriteLine(cars.find_all{|c|c.match(/^b/)}) #b ile başlayan elemanları regex ifadesi ile bulmak

#bir diziyi tersine çevirme
WriteLine(cars.reverse)
puts "First 3 cars"

WriteLine(cars.first(3)) #dizinin ilk üç elemanını bulmak

#dizide parametre olarak gelen eleman var mı?
puts "is there a bmw 316i in his gallery #{cars.include?("bmw 316i")}"

#bir diziyi çoğaltmak
myGallery=cars*2
WriteLine(myGallery.sort)

#dizi elemanları arasına seperator koymak
numbersX=[1,2,3,4,4,2,6,10,23,45,6,100]
puts numbersX* "-"  
numbersY=[4,2,3,10,22,10,2,33,1,90]
puts numbersY*","

#+ operatörü ile iki dizinin birleştirilmesi
puts (numbersX+numbersY)*" "

#iki dizinin farkının - operatörü ile alınması
numbersZ=numbersY-numbersX
puts numbersZ*"/"
  
numbersQ=numbersX|numbersY #dizilerin kesişim kümesini almak
puts numbersQ.sort()*"."
  
cars.push("bugatti veyron") #dizi sonuna eleman eklemek
puts "New car in the gallery #{cars.last}"

cars.unshift("ferrari testorassa") #dizinin ilk hücresine yeni bir eleman ekleyip ötelemek
puts "First car in the gallery #{cars.first}"

cars.concat(["tesla","toyota yaris","wolksvagen jetta"]) #bir dizinin sonuna başka bir dizi eklemek
WriteLine(cars)

newCars=cars.join() # iki diziyi birleştirmek veya birleştirirken araya seperator koymak
puts newCars
newCars=cars.join("|")
puts newCars

# insert element at specific position in an array
cars.insert(3,"pagani zonda")
WriteLine(cars)

numbersA=[1,2,3,4,5]
#numbersB=[1,3,2,5]
#numbersB=[1,2,3,4,5,6]
#numbersB=[4,2,1,6,7]
numbersB=[1,2,3,4,5]
# <=> spaceship operator
puts numbersA<=>numbersB

#pop : get and remove last element of an array
puts "\n #{cars.pop}"
puts cars
puts "\n #{cars.pop(3)}"
puts cars
puts
#shift : get and remove first element of an array
puts "\n #{cars.shift}"
puts cars
puts "\n #{cars.shift(3)}"

#delete
cars.delete("bmw z3")
puts cars

#delete_at
cars.delete_at(2)
#clear