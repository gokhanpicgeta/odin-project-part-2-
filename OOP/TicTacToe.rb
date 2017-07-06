


class TicTacToe
	
	@@board = Array.new(3){Array.new(3)}
	@@gameOver = false 
	def initialize
		 
	end

	def checkWin
		
		if @@board[0][0] == @@board[0][1] && @@board[0][1] == @@board[0][2] 

			@@gameOver = true unless @@board[0][0] == nil 
				
		elsif @@board[0][0] == @@board[1][0] && @@board[1][0] == @@board[2][0] 
			@@gameOver = true unless @@board[0][0] == nil 

		elsif @@board[0][0] == @@board[1][1] && @@board[1][1] == @@board[2][2] 
			@@gameOver = true unless @@board[0][0] == nil 

		elsif @@board[0][2] == @@board[1][2] && @@board[1][2] == @@board[2][2] 
			@@gameOver = true unless @@board[0][2] == nil 

		elsif @@board[1][0] == @@board[1][1] && @@board[1][1] == @@board[1][2] 
			@@gameOver = true unless @@board[1][0] == nil  

		elsif @@board[0][2] == @@board[1][1] && @@board[1][1] == @@board[2][0] 
			@@gameOver = true unless @@board[0][2] == nil  
		
		end
		return @@gameOver	
	end

	def playerOneTurn(pos)
		flag = false 
		case pos 
		when 1
			if @@board[0][0] == nil 
				@@board[0][0] = "X" 
				flag = true
			end 
		when 2  
			if @@board[0][1] == nil 
				@@board[0][1] = "X"
				flag = true
			end 
		when 3 
			if @@board[0][2] == nil 
				@@board[0][2] = "X"
				flag = true
			end 
		when 4 
			if @@board[1][0] == nil 
				@@board[1][0] = "X" 
				flag = true
			end 
		when 5 
			if @@board[1][1] == nil 
				@@board[1][1] = "X"
				flag = true
			end 
		when 6   
			if @@board[1][2] == nil 
				@@board[1][2] = "X" 
				flag = true
			end 
		when 7 
			if @@board[2][0] == nil 
				@@board[2][0] = "X"
				flag = true
			end 
		when 8 
			if @@board[2][1] == nil 
				@@board[2][1] = "X"
				flag = true
			end 
		when 9 
			if @@board[2][2] == nil 
				@@board[2][2] = "X"
				flag = true
			end 
		end
		return flag 

	end

	def playerTwoTurn(pos)
		flag = false 
		case pos 
		when 1
			if @@board[0][0] == nil 
				@@board[0][0] = "O" 
				flag = true
			end 
		when 2  
			if @@board[0][1] == nil 
				@@board[0][1] = "O" 
				flag = true
			end 
		when 3 
			if @@board[0][2] == nil 
				@@board[0][2] = "O" 
				flag = true
			end 
		when 4 
			if @@board[1][0] == nil 
				@@board[1][0] = "O" 
				flag = true
			end 
		when 5 
			if @@board[1][1] == nil 
				@@board[1][1] = "O" 
				flag = true
			end 
		when 6   
			if @@board[1][2] == nil 
				@@board[1][2] = "O" 
				flag = true
			end 
		when 7 
			if @@board[2][0] == nil 
				@@board[2][0] = "O" 
				flag = true
			end 
		when 8 
			if @@board[2][1] == nil 
				@@board[2][1] = "O" 
				flag = true
			end 
		when 9 
			if @@board[2][2] == nil 
				@@board[2][2] = "O" 
				flag = true
			end 
		end
		return flag 
	end

	def printBoard
		print @@board[0].to_s + "\n"
		print @@board[1].to_s  + "\n"
		print @@board[2].to_s + "\n"
	end 

end 

player = TicTacToe.new

while player.checkWin == false
	loop do  

		puts "Enter a position player One"
		input = gets.chomp.to_i
		flag1 = player.playerOneTurn(input)
		break if flag1 == true 
	
	end

	if player.checkWin
		player.printBoard
		puts "PLAYER ONE WINS!!!"
		next
	end

	loop do   
		puts "Enter a position player Two"
		input = gets.chomp.to_i
		flag2 = player.playerTwoTurn(input)
		break if flag2 == true 
	end 

	if player.checkWin
		player.printBoard
		puts "PLAYER TWO WINS!!"
		next 
	end

	player.printBoard()
	 
end

