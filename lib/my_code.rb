def map(source_array)
    index=0
    newarray=[]
    while index < source_array.count do
        x = source_array[index]
        newarray << yield(x)
        index += 1
        end
        p newarray
        return newarray
    end
    
def reduce(source_array, starting_point=nil)
    if starting_point
        total = starting_point
        index=0
    else
        total = source_array[0]
        index = 1
    end

    while index<source_array.count do
        x=source_array[index]
        total = yield(total, x)
        index += 1
    end
total
end

