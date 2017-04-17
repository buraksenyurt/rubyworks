=begin
Ruby programlama dilini 10 dakika içinde anlatmak isteseydim neler yapardım
=end

# Merhaba demek
puts "merhaba.Adın ne?"
name=gets
3.times{puts "Çok yaşa #{name} :)"}

# çok basit bir string array üretmek her bir elemanında bir fonksiyon icra ettirmek
sepetim=["La Ferrari","Bugatti Veyron","Cesna 250"]
sepetim.each{|car|puts car.upcase}
  
#her şeyin bir nesne olduğunu göstermek 
nesneler=[1000,Math::PI,"afrika kıtası",-1,true,false,'c']
nesneler.each do |n|
  puts n.class
end

#bir sınıf tasarlamak, onu bir diziye almak, diziyi bir dosyaya yazmak
class Oyuncu
  attr_accessor :TakmaAd,:Seviye
  
  def initialize(takmaAd,seviye)
    @TakmaAd,@Seviye=takmaAd,seviye
  end
  
  def to_s
    "#{@TakmaAd} - [#{@Seviye}]"
  end
end

oyuncular=[]
oyuncular<<Oyuncu.new("coni vik",900)
oyuncular<<Oyuncu.new("mayık cordın",450)
oyuncular<<Oyuncu.new("nadya komenaççi",680)
oyuncular<<Oyuncu.new("lord veyda",500)
oyuncular<<Oyuncu.new("anakin",1200)
oyuncular<<Oyuncu.new("şadov miki",280)
oyuncular<<Oyuncu.new("lara kroft",680)
oyuncular<<Oyuncu.new("tipitip",1150)
oyuncular<<Oyuncu.new("tin tin",918)
oyuncular<<Oyuncu.new("burkii",-100)

ustduzeyOyuncular=[]
oyuncular.find_all do |oyuncu|
  ustduzeyOyuncular<<oyuncu if oyuncu.Seviye>1000
end
puts ustduzeyOyuncular

File.open("oyuncular.dat","w") do |f|
  oyuncular.each do |o|
    f<<"#{o.to_s}\n"
  end
end

#bir kaç pratik toplam hesaplaması
sum=0
1.upto(100){|n| sum+=n}
puts sum

sum=0
(1..100).each do |n|
  sum+=n if n%2==0
end
puts sum

sum=0
1000.downto(500).each do |n|
  sum+=n if n%17==0
end
puts sum

sum=0
1.step(100,5){|n|sum+=n}
puts sum

#kod yazan ve çalıştıran kod. En basit haliyle.
codes="puts \"what's your name?\" 
    yourName=gets
    3.times{puts \"\#{yourName.upcase}\"}
"
eval codes

# Bir block yazıp sihir yapılabilir
public
def find_all_myway
  result=[]
  if block_given? 
      self.each do |e|
        if(yield(e)) 
          result<<e
        end
      end
    end
  result
end

numbers=(1..10)
oddNumbers=numbers.find_all_myway{|n| n%3==0}
puts oddNumbers
