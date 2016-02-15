class Utility
 
def justDoIt(val1,val2,someLambda) #3
 
puts Time.now
 
someLambda.call val1,val2
 
end
 
  
 
def saySomethingWithLambda #6
 
lambdaZ=lambda{
 
return "Do something with Lambda"
 
}
 
lambdaZ.call
 
return "end of saySomethingWithLambda"
 
end
 
  
 
def saySomethingWithProc #7
 
procZ=Proc.new{
 
return "Do something with Proc"
 
}
 
procZ.call
 
return "end of saySomethingWithProc" #8
 
end
 
end
 
 
 
if __FILE__==$0
 
 
 
einstein=Utility.new
 
 
 
lambdaX=lambda{|a,b| a+b} #0
 
result=lambdaX.call 5,6
 
puts result
 
 
 
lambdaY=->(motto){puts "Your motto is ' #{motto}'"} #1
 
lambdaY.call "It's a beautiful day"
 
  
 
puts "lambdaX -> #{lambdaX.class} class" #2
 
  
 
puts einstein.justDoIt 3,4,lambdaX #4
 
  
 
procX=Proc.new {|m| puts "Your message is '#{m}'"}
 
procX.call
 
#lambdaY.call #5
 
  
 
puts einstein.saySomethingWithLambda
 
puts einstein.saySomethingWithProc 
 
end
