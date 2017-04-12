=begin
Basit Tarih operasyonları
=end

puts "Günün tarihi #{Time.now}"
date=Time.now
puts "Yıl : #{date.year}\nAy : #{date.month}\nGün : #{date.day}"
puts "Saat : #{date.hour}\nDakika :#{date.min}\nSaniye : #{date.sec}"

puts "Merhaba. Ben Yotto.\nDoğum tarihini şu şekilde girer misin? dd.mm.yyyy"
input=gets
day,month,year=input.split(".")
birthdate=Time.local(year,month,day)
lifeSeconds=Time.now-birthdate
puts "#{(lifeSeconds /86400).round} gündür hayattasın :)"