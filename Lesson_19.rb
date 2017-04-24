=begin
temel istisna yönetimi.
"rescue, ensure , retry if" kullanımlarına yer verilmektedir
=end

#en temel kullanımı aşağıdaki gibidir
def div(x,y)
  begin
    return x/y #hata yoksa return nedeniyle aşağıdaki else bloğu devreye girmez
  rescue ZeroDivisionError=>e #Sıfıra bölme hatası yakalanır
    puts "#{e.message}-#{e.class}"
  rescue #genel hata yakalamaları için kullanılır. Boş catch veya Exception nesnesini ele alan tip olarak düşünülebilir
    puts "Common error"
  else #begin bloğunun else kısmıdır.
    puts "No problem"
  ensure #ensure finally bloğu olarak düşünülebilir. Her durumda çalışır
    puts "Always run" 
  end
end

puts div(8,2)
puts div(2,0)

# try if ile bir hata olasığına karşı n sayıda deneme yaptırılmasını sağlayabiliriz.
def connectToHost(host="localhost")
  tryCount=1
  begin
    puts "#{host} adresine bağlanmaya çalışılıyor"
    raise StandardError.new("Hata : bağlantı hatası oluştu") #senaryoyu sembolize etmek için bilinçli olarak hata fırlatılıyor
  rescue Exception=>e
    puts "#{e.message} - #{tryCount}/3"
    tryCount+=1
  retry if tryCount<=3 #tryCount durumuna göre begin bloğundaki kod tekrar denenecektir
  end
end

connectToHost()
connectToHost("google")

#kendi hata tiplerimizi de yazabiliriz. Bunun için bir ...Error tipinden türetme yapmak yeterlidir.
class AuthenticationError<StandardError
  attr_reader :username
  attr_reader :time
  
  def initialize(username,time)
    @username,@time=username,time
  end
  
  def message #üstten gelen message fonksiyonunu ezebiliriz
    "Login error for #{@username} at #{@time}"
  end
end

def login(uName,pwd)
  begin
    if(uName=="admin" && pwd=="P@ssw0rd")
        puts "Hello #{uName}"
    else
      raise AuthenticationError.new(uName,Time.now)
    end
  end
end

begin
  puts "Username : ?"
  name=gets.chomp
  puts "Password : ?"
  pwd=gets.chomp
  login(name,pwd)
rescue AuthenticationError=>e #kendi yazdığımız Error tipini yakalıyoruz.
  puts e.message
end