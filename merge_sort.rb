

def merge_sort(array)
    if array.size < 2
        return array
    else 
        left = merge_sort(array[0...array.size/2])
        right = merge_sort(array[array.size/2...array.size])
        merge(left, right)
    end 
end 

def merge(left, right, result=[])
    (left.size + right.size).times do
        if left.empty?
            result << right.shift 
        elsif right.empty?
            result << left.shift
        else 
            comparison = left <=> right
            if comparison == -1
                result << left.shift
            elsif comparison == 1
                result << right.shift
            else
                result << left.shift
            end
        end 
    end
    result
end

my_sam_arr = []

rand(200).times do
    my_sam_arr << rand(200)
end

p my_sam_arr
p merge_sort(my_sam_arr)