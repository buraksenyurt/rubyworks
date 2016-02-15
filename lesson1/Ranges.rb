if __FILE__==$0
 
#.. ile ... farki
harfler1=('a'..'j').to_a
harfler2=('a'...'j').to_a
  
puts harfler1.inspect
puts harfler2.inspect
  
# Range' in her bir elemani uzerinde islem uygulamak
toplam=0
(1..100).each{|n|toplam+=n}
puts toplam
  
# Negatif sayi araliginda calismak
(-100..-1).each{|n|printf "#{n},"}
  
# Baslangic ve bitis degerleri ile ornegin sondan n sayida elemani cekmek
sayilar=Range.new(0,189)
puts "\nIlk eleman:#{sayilar.begin}\nSon eleman:#{sayilar.end}"
puts "son 5 sayi #{sayilar.last(5)}"
  
# Sayi araliginda belirli adim degerlerinde atlayarak ilerlemek
puts "Baslangic sayisi"
baslangic=gets.to_i
puts "Bitis sayisi"
bitis=gets.to_i
sayilar2=Range.new(baslangic,bitis)
puts sayilar2.step(3){|n|printf "#{n},"}
  
# case kosullu ifadesinde Range kullanmak
puts "\nKac puan aldiniz"
puan=gets 
case puan.to_i
when 1..20 then puts "Basarisiz"
when 20..50 then puts "Daha cok calismali"
when 20..75 then puts "Basarili"
when 75..100 then puts "Tebrikler! Ustun basari"
end
end
