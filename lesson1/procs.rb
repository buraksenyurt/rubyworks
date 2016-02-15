class Utility
 
def justDoIt(someProc)
 
puts "Begin Time : "+Time.now.to_s
 
someProc.call #0
 
puts
 
2.times {puts "."}
 
end
 
def calculate(x,y,someProc)
 
someProc.call x,y #1
 
end
 
end
 
 
 
if __FILE__==$0
 
cevatKelle=Utility.new
 
#2 ornek proc tanimi
 
procX=Proc.new { 
 
[1,3,5,7].each{|x|printf "#{x*2},"}
 
}
 
printf "procX is a #{procX.class}\n" #3
 
  
 
cevatKelle.justDoIt procX #4
 
puts "Press enter to continue"
 
gets
 
  
 
#5
 
procY=Proc.new do |x|
 
total=0
 
1.upto(100){|n|total+=n}
 
puts "sum(1..100) = "+total.to_s
 
end
 
  
 
cevatKelle.justDoIt procY
 
  
 
procY.call #6
 
  
 
result=cevatKelle.calculate 5,4,Proc.new { |x,y| (x*2)+(y*2)} #7
 
printf "\n(x*2)+(y*2)= #{result}"
 
end
