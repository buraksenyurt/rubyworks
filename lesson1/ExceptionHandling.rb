class Utility
 
def sampleOne(x,y)
 
begin
 
result=x/y
 
puts "#{x} / #{y} = #{result}"
 
rescue ZeroDivisionError=>e
 
puts "Sifira bolme hatasi olustu.\nDetay : #{e.message}( #{e.class} )"
 
else
 
puts "Kodda herhangi bir hata bulunamadi. Mikemmel :)"      
 
end
 
end
 
  
 
def sampleTwo(conStr)
 
begin
 
puts "Baglanti kuruluyor"
 
raise ThreadError
 
puts "kod devam ediyor"
 
rescue 
 
puts "Baglanti hatasi"
 
ensure
 
puts "Her durumda calisak"
 
end
 
end
 
 
 
def sampleThree(userName,password)
 
if userName=="burki" && password=="1234."
 
puts "Merhaba #{@userName}"
 
else
 
raise CredentialError.new(userName)
 
end
 
end
 
  
 
def sampleFour(url)
 
tryCount=1
 
begin
 
puts "#{url} icin baglanti denenecek"
 
raise StandardError.new,"Hata : Baglanti gerceklestirilemedi"
 
rescue Exception=>e
 
puts "#{e.message}. TryCount #{tryCount}"
 
tryCount+=1
 
retry if tryCount<=3
 
end
 
end
 
end
 
 
 
class CredentialError<StandardError
 
attr_reader :userName
 
attr_reader :attemptTime
 
def initialize(userName)
 
@userName=userName
 
@attemptTime=Time.now
 
end
 
def message
 
"Login error for #{@userName} at #{@attemptTime}"
 
end
 
end
 
 
 
if __FILE__==$0
 
begin
 
jack=Utility.new
 
jack.sampleOne 1,0
 
puts
 
jack.sampleOne 4,2
 
puts
 
jack.sampleTwo("remote haddop connection")
 
puts
 
jack.sampleFour "http://www.google.com.tr"
 
puts
 
jack.sampleThree("burki","1291")
 
puts
 
rescue Exception=>e
 
puts e.message
 
rescue CredentialError=>e
 
puts e.message
 
end
 
end
