=begin
loops
DownTo, UpTo, Times, Step, for, while, break, next
=end

#downto
100.downto 1 do |n|
  puts n if n%3==0 && n%5 ==0
end

#upto
1.upto(100) do |n|
  print n," " if n%25==0
end

#times
10.times { |n| puts "#{n}. Hello World"}

#step
total=0
1.step 100,2 do |n|
  total+=n
end
puts total

#while
counter=0
while counter<10 do
  print counter," "
  counter+=1
end
puts

#until
counter=0
until counter>10 do
  print counter," "
   counter+=1
end

#upto
luckyNumber=7
counter=0
1.upto(10) do 
  puts "\nPlease give me a number"
  number=gets().to_i
  counter+=1
  if number==7 then
    puts "Congratulaions. You guess at #{counter} times"    
    break
  else
    puts "#{counter} try"
    next
  end
 end

 #loop
 loop do
   puts "it's a good day to die. isn't it?\nWhat is the password?"
   password=gets.chomp()
   break if password=="P@ssw0rd"
 end
 
 puts "end's of fun" 