=begin
Head first Ruby kitabındaki 6ncı bölüm örneğidir.
Sayfa 193ten başlar
=end
review_file=File.open("reviews.txt")
lines=review_file.readlines
puts "Line 4: #{lines[3]}"
puts "Line 1: #{lines[0]}"
review_file.close

#yukardaki kod parçasını block kullanarak aşağıdaki gibi de yazabiliriz.
File.open("reviews.txt") do |reader|
  allLines=reader.readlines
  puts "Line 4: #{allLines[3]}"
  puts "Line 1: #{allLines[0]}"
end

puts lines.length
#puts allLines.length #bir block içerisinde tanımlanmış olan değişkene block dışından erişemeyiz
#Bunun için allLines'ı block dışında tanımlamamız lazım

#metindeki ilişkileri satırları bulmak için
relevant_lines=[]
lines=[]
File.open("reviews.txt") do |reader|
  lines=reader.readlines
end

#lines.each do |line|
#  if line.include?("Truncated")
#    relevant_lines<<line
#  end
#end
#Alttaki kod parçası daha pratiktir
relevant_lines=lines.find_all{|line|line.include?("Truncated")}
puts relevant_lines

# -- ile başlayanları reject fonksiyonunu kullanarak çıkartıyoruz
reviews=relevant_lines.reject{|line|line.include?("--")}
puts reviews

#is sonrasındaki kelimeleri bulmayı amaçlıyoruz.
def find_adjective(string)
  words=string.split(" ") #boşluklara göre gelen string'i ayrıştır
  index=words.find_index("is") #is kelimesinin dizideki indisini bul
  words[index+1] #bir sonraki kelimeyi geri döndür
end

#find_adjective metodunu kullanarak reviews içerisindeki is sonrası gelen kelimeleri buluyoruz
#adjectives=[]
#reviews.each do |review|
#  adjectives<<find_adjective(review)
#end
#puts "\n",adjectives

adjectives=reviews.map do |review|
  adjective=find_adjective(review)
  "'#{adjective.capitalize}'"
end
puts "\n",adjectives
