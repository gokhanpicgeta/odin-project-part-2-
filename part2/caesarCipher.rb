def caesar_cipher(input, positions)

	i = 0 

	while i < input.length do 

		asciiNum = input[i].ord()

		#If it is a capital letter 
		if asciiNum > 64 and asciiNum < 91 

			updatedAscii = asciiNum + positions
			
			#If it is above Z we need to wrap it around to a with the same case so it goes from Z to A 
			if updatedAscii >= 91
				updatedAscii -= 26
			end 
			
			input[i] = updatedAscii.chr
		 
		#If it is a lowercase letter	
		elsif asciiNum > 96 and asciiNum < 123

			updatedAscii = asciiNum + positions	
			#IF it is above z and we need to wrap it around to a 
			if updatedAscii >= 123
				updatedAscii -= 26
			end

			input[i] = updatedAscii.chr
		end
		
		i+=1
	end 
	input
end

puts caesar_cipher("What a string!", 5)