


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
		case pos 

		when 1
			@@board[0][0] = "X"
		when 2  
			@@board[0][1] = "X"
		when 3 
			@@board[0][2] = "X"
		when 4 
			@@board[1][0] = "X"
		when 5 
			@@board[1][1] = "X"
		when 6   
			@@board[1][2] = "X"
		when 7 
			@@board[2][0] = "X"
		when 8 
			@@board[2][1] = "X"
		when 9 
			@@board[2][2] = "X"
		end

	end

	def playerTwoTurn(pos)
		case pos 

		when 1
			@@board[0][0] = "O"
		when 2  
			@@board[0][1] = "O"
		when 3 
			@@board[0][2] = "O"
		when 4 
			@@board[1][0] = "O"
		when 5 
			@@board[1][1] = "O"
		when 6   
			@@board[1][2] = "O"
		when 7 
			@@board[2][0] = "O"
		when 8 
			@@board[2][1] = "O"
		when 9 
			@@board[2][2] = "O"
		end
	end

	def printBoard
		print @@board[0].to_s + "\n"
		print @@board[1].to_s  + "\n"
		print @@board[2].to_s 
	end 

end 

player = TicTacToe.new


while player.checkWin == false
	
	puts "Enter a position player One"
	input = gets.chomp.to_i
	player.playerOneTurn(input)

	if player.checkWin
		player.printBoard
		puts "PLAYER ONE WINS!!!"
		next
	end

	puts "Enter a position player Two"
	input = gets.chomp.to_i
	player.playerTwoTurn(input)

	if player.checkWin
		player.printBoard
		puts "PLAYER TWO WINS!!"
		next 
	end

	player.printBoard()
	 
end

