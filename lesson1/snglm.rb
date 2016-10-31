#Singleton Methods
class Player	
	def initialize(name,position)
		@name=name
		@position=position
	end	
	def Move
		puts "#{@name} is moving..."
	end	
end
burki=Player.new("burki","C")
burki.Move

def burki.Jump(level)
	puts "#{@name} is jumping to level #{level}"
end
burki.Jump(3)

sharp=Player.new("s(h)arp","PG")
def sharp.Move
	puts "#{@name} is moving with different tools"
end
sharp.Move
sharp.Jump(2)
