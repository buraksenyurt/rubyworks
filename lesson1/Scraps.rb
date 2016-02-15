# encoding: ISO-8859-9
 
=begin
 
Geride Kalan Bazı Kırıntılar
 
  
 
Ruby öğrenirken geçmiş dönemde üzerinden geçtiğim konular içerisinde kıyıda köşede kalmış olanlardan bazılarını
 
aşağıdaki maddeler halinde işlemeye çalıştım.
 
  
 
? nin metodlarda ne anlama geldiği
 
En basit anlamda Regex ifadesi ile veri kontrolü yapmak
 
Bir metoda değişken Sayıda argüman yollamak *
 
Metodlarda alias(takma isim) kullanımı
 
Global Constats(Genel Sabitler) kullanımı
 
Monkey Patching (Sınıfları genişletirken dikkatli olmak gerekiyor)
 
BEGIN ve END kullanımı
 
Ufacıktan Meta-Programming çalışması
 
=end
 
  
 
def topla(*sayilar) # Variable-Length arguments kullanımı #0
 
toplam=0
 
sayilar.each{|s| toplam+=s}
 
return toplam
 
end
 
  
 
#1
 
def emailAdresimi?(icerik) #? kullanımı. Metod her zaman true veya false dönmelidir.
 
icerik=~/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i #basit regex ile email adresi kontrolü
 
end
 
  
 
#2
 
def girisMesaji(mesaj="'Bugün aklına bir mesaj gelmedi mi?'") #Default argument kullanımı
 
"\n'#{mesaj}'"
 
end
 
  
 
#3
 
def writeRubyWorld
 
  
 
puts "\n"
 
puts "Ruby version : #{RUBY_VERSION}"
 
puts "Release date : #{RUBY_RELEASE_DATE}"
 
puts "Platform : #{RUBY_PLATFORM}"
 
puts "Copyright : #{RUBY_COPYRIGHT}"
 
puts "Descriptin : #{RUBY_DESCRIPTION}"
 
puts "Engine : #{RUBY_ENGINE}"
 
puts "Patch Level : #{RUBY_PATCHLEVEL}"
 
puts "Version : #{RUBY_VERSION}"
 
#puts "Environment Variable : #{ENV.inspect}"
 
puts "\n"
 
  
 
end
 
  
 
#4 Monkey Patching denemeleri
 
class Fixnum
 
def +(x) 
 
(self*2)-x
 
end
 
end
 
  
 
class String
 
def downcase
 
self.reverse
 
end
 
end
 
  
 
#7
 
BEGIN { puts "Uygulama #{Time.now.to_s} saatinde başladı"}
 
END { puts "Uygulama #{Time.now.to_s} saatinde sonlandı"}
 
  
 
puts topla 1,2,3,4,5
 
puts topla 4,5,2
 
  
 
email="selim@buraksenyurt.com"
 
puts emailAdresimi?(email) ? "#{email} geçerlidir" : "#{email} geçerli değildir"
 
  
 
email="brksnyrt.com"
 
puts emailAdresimi?(email) ? "#{email} geçerlidir" : "#{email} geçerli değildir"
 
  
 
puts girisMesaji
 
puts girisMesaji("Ne güzel bir gündü")
 
  
 
alias msg girisMesaji #Metodlara takma ad verilmesi
 
puts msg("Yağmur yağınca mis gibi toprak koktu")
 
  
 
sleep 3 #3 saniye boyunca uygulamayı duraksatacaktır
 
  
 
x,y=4,5
 
puts "\n#{x}+#{y}=#{x+y}" #5
 
puts "BURKI".reverse #6
 
  
 
writeRubyWorld
 
  
 
#8
 
rakam=3.1415
 
puts rakam.class
 
#puts rakam.methods
 
rounded=rakam.method(:round).call
 
puts rounded
 
  
 
#9
 
class Utility
 
  
 
def method_missing(method_name,*args,&block)
 
if method_name== :getPassword
 
puts "getPassword isimli metod çağırıldı. Bunun için bir şeyler yapılabilir."
 
else
 
puts "#{method_name} isimli metod #{args} parametreleri ile çağırıldı."
 
end
 
end
 
  
 
def calculate
 
  
 
end
 
  
 
end
 
  
 
einstein=Utility.new
 
einstein.getPassword
 
einstein.showPassword "@#$½ğ123|!?","Rijndael"
 
einstein.calculate
