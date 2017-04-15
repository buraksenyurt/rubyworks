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

#versyion 4
def withParameters(name)
  puts "begin of withParamters"
  yield name if block_given?
  puts "end of withParameters"
end
withParameters("burak"){|n| puts n}
  
#find_all metodunun bir benzeri
#aşağıdaki metod çok şıktır. kendi içine yield ile bir kod bloğunu alabilir ve
#uygulandığı veri kümesinde bu blokla gelen kriterlere uyan elementleri
#geri döndürebilir
public
def findSomethings
  result=[]
  self.each do |item|
    if block_given? 
      if yield(item)
        result<<item
      end
    end
  end
  result
end
r=[1,5,8,10,2,4,3,5,7,19,29,18].findSomethings{|n|n%3==0}
puts r
