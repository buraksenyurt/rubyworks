=begin
"proc" ve "lambda" kullanımı
=end

# proc'lar da block'lara benzerler. Kod bloklarını işaret ederler. Ancak proc'ları bir nesne olarak tanımlayabilir ve sonradan tekrar kullanabiliriz.
greetings=Proc.new do
  puts "I am groot"
end

greetings.call
greetings.call

#proc'lara parametre de geçebiliriz
calculate=Proc.new do |x,y|
  x+y
end
puts calculate.call(3,5)

#çok doğal olarak yukarıdaki yapıların normal metod tanımlamalarından bir farkı yok gibi
#diğer yandan metodlara parametre olarak geçebiliyoruz
def saySomething(procV)
  puts "Start log"
  procV.call
  puts "End log"
end
hi=Proc.new do
  puts "Hi".upcase
end
aloha=Proc.new do
  puts "Aloha".upcase
end
saySomething(hi)
saySomething(aloha)

#metodlar geriye proc nesnelerini de döndürebilirler
def compose proc1,proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt=Proc.new do |x|
  x*x
end
doubleIt=Proc.new do |x|
  x+x
end

doubleThanSquare=compose(squareIt,doubleIt)
squareThanDouble=compose(doubleIt,squareIt)

puts doubleThanSquare.call(5)
puts squareThanDouble.call(5)