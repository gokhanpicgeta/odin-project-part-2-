class Stock_picker
    
    def initialize(input)
        @stockPrices = input
    end
    
    def findMinMax
        difference = 0
        temp = 0
        i = 0
        j = 1
        sellDate = 0
        buyDate = 0
        
        while i < @stockPrices.size do
            j = i
            while j < @stockPrices.size do
                
                temp = @stockPrices[j] - @stockPrices[i]
                
                if temp > difference
                    difference = temp
                    sellDate = i
                    buyDate = j
                end
                j+=1
            
            end
            
            i+=1
            
        end
       
       
       return sellDate,buyDate
    end
     
    
    

end

Stocks = Stock_picker.new([17,3,6,9,15,8,6,1,10])
puts Stocks.findMinMax