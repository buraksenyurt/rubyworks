=begin
temel string fonksiyonlari ve switch case, if
=end

motto="it's a good day for to die"
puts motto.length #metin uzunluğunu bulma
puts motto.reverse #metni ters çevirme
puts motto.capitalize #kelimelerin ilk harflerini büyütme
puts motto.upcase #büyük harfe çevirme
puts "ABC".next #bir sonraki kelime
puts "is empty #{motto.empty?}" #string empty?

puts "How old are you?"
age=gets.to_i #tamsayıya dönüştürme
puts "Your too old for this game" unless age<40 #unless condition

#switch case
puts "What's your last level in this game"
level=gets.to_i
case level
when 0..50
  puts "rookie"
when 50..100
  puts "beginner"
when 100..500
  puts "semi pro"
when 500..1000
  puts "pro"
else
  puts "unknown"
end

#basit if else kullanımı
puts "what's your name?"
name=gets
if name.chomp=="burak"
  puts "Wellcom boss!"
else
  puts "hello #{name}"*10
end

#reqular expression ile bir cümle içerisinde kelime arama
someTitle="what a lovely day ha! I think we we we can go to outside today"
case someTitle
when /we/
  puts "yeap there is a we keyword"
end