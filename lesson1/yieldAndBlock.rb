class Utility
 
def justDoIt 
 
if !block_given? then #0 yield yerine bir block gelmediyse
 
puts "Block yok"
 
else
 
yield #1
 
yield
 
yield
 
end
 
end
 
def repeat(count) #2
 
raise 'Empty Block Error' if !block_given? #3 Exception firlatimi
 
count.times { yield } #4
 
end
 
def calculate (min,max) #5
 
for i in min..max do
 
yield i
 
end
 
end
 
end
 
 
 
if __FILE__==$0
 
 
 
puts "What is your motto?"
 
motto=gets
 
 
 
cevatKelle=Utility.new
 
cevatKelle.justDoIt{ puts motto }
 
  
 
cevatKelle.repeat(2) { puts "I love ruby" }
 
cevatKelle.repeat(2) #4 deki exception' in firlamasina neden olacak #7
 
  
 
total=0
 
cevatKelle.calculate(10,20) {|x,y| total+=x}
 
puts total
 
  
 
min,max,e=10,20,2
 
total=0
 
cevatKelle.calculate(min,max) {|x,y| total+=(x*e)} #e local degiskeni kullanilmistir
 
puts total
 
  
 
total=0
 
[1,3,5,7,9].each{ |i| total+=(i*2) } #8 each metodunda built-in block kullanimi
 
puts total
 
  
 
cevatKelle.justDoIt #6 
 
end
