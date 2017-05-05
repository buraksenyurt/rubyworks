=begin
Fiber konusuna bir bakalım
=end

=begin sample 1
myFiber=Fiber.new do  
  puts "Fiber metoduna girdik"
  Fiber.yield
  puts "Fiber metodunun sonuna geldik"  
end

puts "Burası çağıran kod kısmı"
myFiber.resume
puts "Tekrar çağıran koddayım"
myFiber.resume
=end


=begin sample 2
fiberX=Fiber.new do |input|
  puts "#{input} bilgisi geldi.Şimdi bunla bir şeyler yapayım"
  Fiber.yield(rand)
  puts "{input} şeklinde yeni bir bilgi geldi. Bunu da hesaplayayım."
  Fiber.yield(rand)
  "Her şey tamamlandı"
end

puts "Çağıran kod"
output1=fiberX.resume(198)
puts "Fiber içinden #{output1} cevabı döndü"
output2=fiberX.resume(200)
puts "Fiber içinden bu kez #{output2} cevabı döndü"
puts(fiberX.resume)
=end

=begin ornek 3

require 'fiber'

fiber1=fiber2=nil

fiber1=Fiber.new do |input|
  puts "Fiber 1 Başlangıç Input : #{input}"
  newInput=fiber2.transfer(input*rand)
  puts "Fiber 1e gelen yeni Input : #{newInput}"
  fiber2.transfer("işlemleri bitir")
end

fiber2=Fiber.new do |input|
  puts "Fiber 2ye gelen Input : #{input}"
  newInput=fiber1.transfer(input*rand)
  puts "Fiber1 diyor ki '#{newInput}'"
end

puts "işlemler başlıyor"
fiber1.transfer(100)
puts "işlemler bitti"

=end

def fibogen
  Fiber.new do
    x,y=0,1
    loop do 
      Fiber.yield(y)
      x,y=y,x+y
    end
  end
end

generator1=fibogen
20.times do 
  print generator1.resume,","
end

puts
generator2=fibogen
5.times do 
  print generator2.resume,","
end