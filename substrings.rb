def substrings(input, dictionary)
    substrings = {}
    input.downcase!
    
    dictionary.each do |word|
        matches = input.scan(word)
        
        if matches.empty? == false
            substrings[word] = matches.size
        end
        
        
    end
      
      
    return substrings
    
end

x = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","lo"]
puts substrings("Howdy partner, sit down! How's it going?", x)
