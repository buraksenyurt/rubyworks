class Figure
 
def initialize(code,nickName) #constructor
 
@code,@nickName=code,nickName #0
 
end
 
def code #accessor method
 
@code
 
end
 
def nickName #accessor method
 
@nickName
 
end
 
def move(direction,stepSize) #instance method
 
"moving to #{direction} with #{stepSize} steps"
 
end
 
def to_s #1
 
"Code: #{@code}, NickName: #{@nickName}"
 
end
 
end
 
class Human < Figure #2
 
def initialize(ability,nickName)
 
super(-1,nickName) #3
 
@ability=ability
 
end
 
def to_s #overriding
 
"Code: #{@code}, NickName: #{@nickName}, Abilitiy: #{@ability}" #4
 
end
 
end
 
class Alien < Figure #2
 
def initialize(mask,code,nickName)
 
super(code,nickName) #3
 
@mask=mask
 
end
 
def to_s #overriding 
 
super + " Mask: #{@mask}" #5
 
end
 
def move(direction,stepSize) #6
 
"#{stepSize} steps to #{direction}"
 
end
 
end
 
class Zork < Alien #9
 
def hire
 
@hire
 
end
 
def initialize(hire,code,nickName,mask) #10
 
super(mask,code,nickName)
 
@hire=hire
 
end
 
def to_s
 
super+" #{@hire}" 
 
end
 
def getFigures #11
 
@code+" "+@nickName
 
end
 
end
 
if __FILE__==$0
 
baseFigure=Figure.new("someCode","some NickName")
 
#puts baseFigure.inspect
 
  
 
nucox=Alien.new("Red","ALN101","nu-cox")
 
puts nucox.to_s
 
puts nucox.move("left",10) #7
 
  
 
halilo=Human.new(1002,"Halilo")
 
puts halilo.to_s
 
puts halilo.move("downside",5) #8
 
  
 
bettleJuice=Zork.new("Numinice di reye tuba kitaa","ZRK-76","Bettle Juice","Zen")
 
puts bettleJuice.to_s
 
puts bettleJuice.getFigures #12
 
end
