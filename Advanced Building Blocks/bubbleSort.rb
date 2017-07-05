def bubble_sort(arr)
    
    i = 0
    
    while i < arr.length do
        
            j = 1
            while j < arr.length  do
               
               if arr[j-1] > arr[j]
                
                
                arr[j],arr[j-1] = arr[j-1], arr[j]      #swap i and j
               
               end
               
               j+=1
            
            end
            
            i+=1
    end
    
   puts arr
   
end

def bubble_sort_by(arr)

    i = 0

    while i <arr.length do
    
        j = 1
        
        while j < arr.length do
            
            difference = yield(arr[j-1],arr[j])
            
            if difference > 0
                arr[j],arr[j-1] = arr[j-1], arr[j]
            end
            j+=1
        end
        i+=1
    end
    puts arr
end

bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end