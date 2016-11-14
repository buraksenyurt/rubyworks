#irb exercices
#irb

#1
"hello world"

#2
10.times do puts "hello world" end

#3
puts "what's your name?"
name=gets
3.times{puts "Hello #{name.upcase}"}

#4
system 'cls'

#5
total=0
1.upto(100){|n| total+=n}
puts total

#6
for i in 45..55
	puts i if i%3==0
end

#7
objects=[1,-45,true,false,"Hello",Math::PI]
objects.each{|o| puts o.class}

#8
class Player
	attr_accessor :nick,:point
	def initialize(nick,point)
		@nick,@point=nick,point
	end
end
burki=Player.new("el maco",1900)
objects<<burki
objects.each{|o|puts o.class}

#9
 class Player
	 def to_s
		"#{@nick}-[#{@point}]"
	 end
 end

 puts burki.to_s
 
 #10
  class String
	 def karizma()
		 newWord=""
		 self.split("").each{|c|newWord<<c<<" "}
		 newWord.chomp
	 end
 end
 puts name.karizma
 
 #11
 def F!(number)
	 if number==0
		return 1
	 else
		return number*F!(number-1)
	 end
 end
 puts F!(40) #with google calc
 puts F!(500) #with google calc
 
#12
def sum(x,y)
	a,b,c,d=x+y,x-y,x*y,x/y
end
puts sum(3,4)
a,b,c,d=sum(3,6)
puts a,b,c,d

#13
def sum(*numbers)
	total=0
	numbers.each{|n|total+=n}
	total
end
puts sum(1,2,3,4)

#REST Service Sample