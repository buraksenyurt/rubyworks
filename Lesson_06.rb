=begin
functions
=end

def putLine(lineCount)
  puts "_"*lineCount
end

#metod parametrelerine varsayılan değerler verebiliriz.
def greetings(message="today is a good day")
  puts message.upcase()
end

def findMods(numbers,mod)
  result=[]
  numbers.each{|n|
    result<<n if n%mod==0
  }
  result
end

# metod parametrelerini isimlendirerek de kullanabiliriz
def sum(xValue:1,yValue:1)
  return xValue+yValue
end

puts sum(xValue:3,yValue:4)

someNumbers=(1..100).to_a
r1=findMods(someNumbers,7)
puts r1.join(",")

10.step(50,10){|l| #10'dan 50ye kadar 10ar atlayarak gider
  putLine(l)
}
40.step(10,-10){|l|
  putLine(l)
}

def sum(*numbers) #csharp dilindeki params kullanımıdır
  total=0
  numbers.each{|n|total+=n}
  return  total
end

greetings
greetings("merhaba nasilsiniz")
puts sum(2,3,4,1,2,-9)
puts sum(1,1,22,3)