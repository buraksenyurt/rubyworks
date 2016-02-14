#Fluent Class Sample

class Soldier
	attr_accessor :name, :weapon, :arms, :direction	
	def initialize
		puts "initializing"
		self
	end	
	def setName(name)		
		self.name=name
		puts "Soldier name is #{@name}"
		self
	end	
	def loadArms(arms)
		self.arms=arms
		puts "loading #{@arms}"
		self
	end	
	def loadWeapon(weapon)
		self.weapon=weapon
		puts "loading #{@weapon}"
		self
	end	
	def move(direction)
		self.direction
		puts "moving to #{@direction}"
		self
	end	
	def stop
		puts "Stopped"
		self
	end
end
foo=Soldier.new.setName("Ironman").
	loadWeapon("sword").
	loadArms("Z100").
	move("forward").
	stop.move("back").stop
