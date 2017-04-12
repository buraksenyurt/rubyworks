=begin
  Ranges 
=end

#1den 10a kadar(10 dahil) sayıları içeren bir range ürettik.
# to_a ile array'e çevirdik ve join ile aralarına , koyarak birleştirdik
numbers=(1..10)
puts numbers.to_a.join(",")

#a'dan z'ye kadar tüm harfleri alacak
alphabets=("a".."z")
alphabets.each{|a|printf "#{a}-"}
puts

#50yi dahil etmeyecek
points=(10...50)
total=0
points.each do |p|
  total+=p if p%5==0
end
puts total

#ba ile da arasında alfabetik sıraya göre rastgele kelimeler içeren bir range
randomWords=("ba".."da")
puts randomWords.to_a.join(',')

#begin ile ilk range elemanını elde edebiliriz.
#end ile son elemanı elde ederiz
#first ve last kullanımları ile baştan veya sondan istediğimiz adette elemanı döndürebiliriz
testRange=(3..1000)
puts "Begin of testRange is #{testRange.begin}"
puts "First 3 numbers of testRange are #{testRange.first(3)}"
puts "Last 5 numbers of testRange are #{testRange.last(5)}"
puts "End of testRange is #{testRange.end}"
puts "Varlar" if testRange.include?(20)
puts "size of testRange is #{testRange.size}"
puts "Max value of testRange is #{testRange.max}"
puts "Min value of testRange is #{testRange.min}"

#step ile aralıktaki değerler arasına adım aralığı koyabiliriz
oddNumbers=(0..100).step(3)
puts oddNumbers.to_a.join(",")

puts "Sinavdan kac aldin"
examResult=gets.to_i
sonuc= case examResult 
when 0..40
  "daha cok calismalisin"
when 40..60
  "kanaat notu kullanacagim"
when 60..80
  "fena degil"
when 80..100
  "tamam tamam begendim"
else
  "sanirim gecerli bir not degeri girmedin"
end
puts sonuc