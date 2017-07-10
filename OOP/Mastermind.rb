class MasterMind
    
    def initialize
        @colors = ["R","B","Y","G","W","O","S"]
        @fourColors = []
        @gameOver = false
        @guessArray = []
        @correctAnswers = 0
        @wrongAnswers = 0
        @colorCount = {"R" => 0,"B" => 0, "Y" => 0, "G" => 0, "W" => 0, "O" => 0, "S" => 0}
        @colorsGuessed = {"R" => 0,"B" => 0, "Y" => 0, "G" => 0, "W" => 0, "O" => 0, "S" => 0}
    end
    
    def pickingColor
        4.times do |i|
            randNumber = rand(7)
            @fourColors[i] = @colors[randNumber]
            @colorCount[@fourColors[i]]+=1
        end
        puts @fourColors
    end
    
    def guessColor
        print "Guess 4 colours and put a space between them "
        guess = gets.chomp
        if guess == "q"
            @gameOver = true
        end
        guess = guess.split(" ")
        @guessArray = guess.to_a
        @guessArray.each do |i|
            @colorsGuessed[i] += 1
        end
    end
    
    def gameState
        @correctAnswers = 0
        @wrongAnswers = 0
        @colorsGuessed = {"R" => 0,"B" => 0, "Y" => 0, "G" => 0, "W" => 0, "O" => 0, "S" => 0}
        4.times do |i|
            
            if @fourColors.include? @guessArray[i] and @colorsGuessed[@guessArray[i]] < @colorCount[@guessArray[i]]
                
                if @guessArray[i] == @fourColors[i]
                    @correctAnswers+=1
                    @colorsGuessed[@guessArray[i]]+=1
                    
                elsif @colorsGuessed[@guessArray[i]] < @colorCount[@guessArray[i]]
                    next
                else
                    @wrongAnswers+=1
                    @colorsGuessed[@guessArray[i]]+=1
                end
            end
        end
        
        if @correctAnswers == 4
            @gameOver = true
        end
        
    end
    
    def isTheGameOver
        @gameOver
    end
    
    def printResults
        return "You got " + @correctAnswers.to_s + " right and " +  @wrongAnswers.to_s + " wrong"
     end
    
end

mastermind = MasterMind.new
mastermind.pickingColor

while mastermind.isTheGameOver == false
    mastermind.guessColor
    mastermind.gameState
    puts mastermind.printResults
end