class Figure
	def initialize(code,nickName)
		@code,@nickName=code,nickName
	end	
	def to_s
		"Code: #{@code}, NickName: #{@nickName}"
	end
end
class Human < Figure
	def initialize(ability,nickName)
		super(-1,nickName)
		@ability=ability
	end	
	def to_s
		"Code: #{@code}
		, NickName: #{@nickName}
		, Abilitiy: #{@ability}"
	end
end
class Alien < Figure
	def initialize(mask,code,nickName)
		super(code,nickName)
		@mask=mask
	end	
	def to_s 
		super + " Mask: #{@mask}"
	end
end
class Zork < Alien	
	def initialize(hire,code,nickName,mask)
		super(mask,code,nickName)
		@hire=hire
	end	
	def to_s
		super+" #{@hire}" 
	end	
	def getFigures
		@code+" "+@nickName
	end
end