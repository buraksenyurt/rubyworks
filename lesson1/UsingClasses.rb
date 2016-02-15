#1
 
$levelLimit=200 #Global Variable
 
#2
 
class LevelController
 
def increaseLevel(value)
 
$levelLimit=$levelLimit+value
 
end
 
def decreaseLevel(value)
 
$levelLimit=$levelLimit-value
 
end
 
end
 
#3
 
class Player
 
@@playerCount=0 #4 Class Variable
 
  
 
def initialize(name,level) #5 Yapıcı metod
 
@name=name
 
@level=level
 
@@playerCount+=1
 
end
 
def name
 
@name #6 Instance Variable
 
end
 
def level
 
@level #Instance Variable
 
end
 
def currentPlayerCount
 
@@playerCount
 
end
 
def isUnderLevel
 
@level<$levelLimit
 
end
 
def run()
 
puts "Run #{@name} runn!"
 
end
 
#7 Overriding
 
def to_s()
 
"#{@name}(#{@level})"
 
end
 
end
 
 
 
if __FILE__==$0
 
 
 
burki=Player.new("burki",350) #8 Create Instance
 
puts burki.to_s+" created"
 
puts "Current player count #{burki.currentPlayerCount}"
 
  
 
tubi=Player.new("Tubi",400)
 
puts tubi.to_s+" created"
 
puts "Current player count #{tubi.currentPlayerCount}"
 
  
 
halilo=Player.new("Halilo",150)
 
puts halilo.to_s+" created"
 
puts "Current player count #{halilo.currentPlayerCount}"
 
  
 
puts burki.name #9
 
        burki.run
 
puts burki.inspect
 
puts tubi.inspect
 
puts halilo.inspect
 
  
 
puts "halilo is under level" if halilo.isUnderLevel #10 Conditional Statement
 
lvl=LevelController.new() #11 Default Constructor
 
lvl.decreaseLevel(100)
 
puts "new level is #{$levelLimit}"
 
puts "halilo is under level" if halilo.isUnderLevel
 
end
