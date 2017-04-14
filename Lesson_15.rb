=begin
blocks kullanımı
=end

#versiyon 1
#&block parametre olarak geliyor ve helloBlock içerisinde çağırılıyor(call)
#yani bir kod bloğunu helloBlock metoduna parametre olarak atayabilirim
def helloBlock(&block)
  puts "begin of method"
  block.call
  puts "end of method"
end

helloBlock{puts "in block"}

#versiyon 2
#bu kez metoda parametre olarak bir block vermedik ama block uygulanabiliyorsa yield ile bu bloğu çağırdık
def saySomething
  puts "begin of method"
  yield if block_given?
  puts "end of method"
end
saySomething{puts "hello again"}
saySomething #block_given? kontrolü nedeniyle yield çağırılmaz

#versiyon 3
#Calculate metoduna gelen parametre kümesi üzerinde bir bloğu uygulatmak istersek
#*args ile n sayıda parametreyi Calculate metoduna gönderebiliyoruz
#yield a ile bu eleman dizisindeki her bir elemanı alıp kullanacak blok'ları kullandırtabiliriz
def Calculate(*args)
  puts "begin of calculation"
  args.each{|a|yield a} if block_given?
  puts "end of calculation"
end
Calculate(1,2,3,4){|n|puts n*2}
Calculate(9,3)