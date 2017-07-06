module Enumerable
    def my_each
        
        return self unless block_given?
        for i in self
            yield i
        end
        self
    end
    
    def my_each_with_index
       
       return self unless block_given?
       j = 0
       
       for i in self
            yield(i,j)
            j+=1
       end
    end

    def my_select
    
        return self unless block_given?
        
        for i in self
            x = yield i
            if x
                puts i
            end
        end
    
    end
    
    def my_all
        
        return self unless block_given?
        
        for i in self
            
            return false unless yield i
            
        end
        return true
    end
    
    def my_any
        
        return self unless block_given?
        
        for i in self
            
            return true if yield i
            
        end
        
        return false
    end
    
    
    def my_none
        
       return true unless block_given?
       
       for i in self
       
           return false if yield i
       
       end
       return true
        
    end
    
    def my_count
        
        return 0 unless block_given?
        counter = 0
        for i in self
        
            counter += 1 if yield i
        
        end
        counter
    end
    
    def my_map
        
        return self unless block_given?
        
        mapArray = []
        
        for i in self
            mapArray.push(yield i)
        end
        
        mapArray
    end
    
    def my_inject
        
        return self unless block_given?
        x = 1
        for i in self
           x = yield(x,i)
           
        end
        return x
    end

end


#x = [1,2,3,4]
#x.my_each {|i| puts "#{i}"}
#x.my_each_with_index{ |i,j| puts "#{i} => #{j}" }

#[1,2,3,4,5].my_select { |num|  num.odd?  }
#puts [1,3].my_all {|all| all.odd? }


#puts [2,4].my_any {|any| any.odd?}

#puts [1,2,4].my_none{ |i| i.odd?}

#puts [1, 2, 4, 2].my_count{ |x| x%2==0 }

#puts (1..4).my_map { |i| i*i }

def multiply_els a
    
    puts a.my_inject {|product,x| x * product}

end

multiply_els([2,4,5])

