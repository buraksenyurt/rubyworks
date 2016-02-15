class Vehicle
 
@@vehicleCount=0 #0 Global Variable
 
def codeName # Accessor method
 
@codeName
 
end
 
def type # Accessor method
 
@type
 
end
 
def power # Accessor method
 
@power
 
end
 
def commander # Accessor method
 
@commander
 
end
 
private :type, :power #1 private accessor methods
 
def move(direction,value) #2 Instance Method
 
"move to #{direction} with #{value} for #{@codeName}."
 
end
 
def fixIt
 
"#{@codeName} is fixing..."
 
end
 
protected :fixIt #3 protected method definition
 
def initialize(type,power,commander,codeName) #4 Constructor method
 
@type=type
 
@power=power
 
@commander=commander
 
@codeName=codeName
 
@@vehicleCount+=1
 
end
 
def self.getVehicleCount #5 Class Methods
 
@@vehicleCount
 
end
 
def to_s #6 overriding
 
"#{@codeName}->Commander: #{@commander} - (#{@type}-#{@power})"
 
end
 
end
 
if __FILE__==$0
 
tiger=Vehicle.new("Tank",80,"Colonel Burk","Red Baron")
 
puts tiger.to_s
 
puts tiger.move("left",10)
 
# puts tiger.fixIt #7 protected method access violation
 
  
 
spitfire=Vehicle.new("Fighter Plane",85,"Lieutenant Tubi","Minion Fighter")
 
puts spitfire.to_s
 
puts spitfire.move("backward",15)
 
  
 
puts "Current vehicle count is " + Vehicle.getVehicleCount.to_s
 
  
 
# puts tiger.type #8 private method access violation
 
end
