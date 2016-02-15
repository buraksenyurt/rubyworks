class ZoneV1
 
def title #1 Accessor Method
 
@title
 
end
 
def capacity=(value) #3 Setter Method
 
@capacity=value
 
end
 
def capacity #2 Accessor Method
 
@capacity
 
end
 
def initialize(title,color,capacity) #0
 
@title=title
 
@color=color
 
@capacity=capacity
 
end
 
def to_s
 
"#{@title}(#{@color}-#{@capacity})"
 
end
 
end
 
class ZoneV2
 
attr_reader :title #5
 
attr_writer :color  #6
 
attr_accessor :capacity  #7
 
def initialize(title,color)
 
@title=title
 
@color=color
 
end
 
def to_s
 
"#{@title}(#{@color}-#{@capacity})"
 
end
 
end
 
if __FILE__==$0
 
monsterPark=ZoneV1.new("Monster of Universe","Black",180)
 
puts monsterPark.to_s
 
monsterPark.capacity=200 #4
 
puts "New Capacity #{monsterPark.capacity}"
 
southPark=ZoneV2.new("South park","Gold")
 
puts southPark.to_s
 
southPark.capacity=15
 
puts "New Capacity #{southPark.capacity}"
 
southPark.color="Red"
 
puts southPark.to_s
 
end
