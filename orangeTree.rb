class OrangeTree 

	def initialize 
		@height = 0 
		@age = 0 
		@dead = false 
		@orangeCount = 0

	end

	def oneYearPasses
		@age +=1 
		@height += 2 
		@orangeCount = 0 

		if @age >= 5
			@dead = true
		end

		if @age >= 2
			@orangeCount += @age 
		end
	end

	def isDead 
		return @dead 
	end

	def countTheOranges
		return @orangeCount
	end

	def pickAnOrange
		if @orangeCount >0 
			@orangeCount -=1 
			return "That orange was delicious"

		else 
			return "No more oranges D:"
		end
	end


end


orangeTree = OrangeTree.new
i =0 
while i < 3 do 
	orangeTree.oneYearPasses() 
	puts orangeTree.isDead()
	puts orangeTree.countTheOranges()
	puts orangeTree.pickAnOrange()

	i+=1
end 



lmao = OrangeTree.new()
puts lmao.countTheOranges()





