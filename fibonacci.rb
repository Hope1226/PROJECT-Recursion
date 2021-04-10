# ASSIGNMENT 1: febonaci sequance 

# Using iteration 

def fibs(number)
arr_seq = Array.new (number){|i| i}

arr_seq.map!.with_index do |element, index|
    if element == 0
        element = 0
    elsif element == 1
        element = 1
    else
        element = arr_seq[index - 1] + arr_seq[index - 2]
    end
end
arr_seq.join(", ")
end

# Using recursion method 

def fibs_rec(num)
    return [0] if num == 0
    return [0, 1] if num == 1

    array = fibs_rec(num - 1)
    array << array[-2] + array[-1]
end


puts fibs_rec(10)
puts fibs(10)





