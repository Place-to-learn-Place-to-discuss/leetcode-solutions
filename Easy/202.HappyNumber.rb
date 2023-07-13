require 'set'

# @param {Integer} n
# @return {Boolean}

# 

def squaredSum(num)
    sum = 0
    while num > 0
        sum += (num % 10) ** 2
        num = num / 10
    end
    sum
end
# first solution: 
#           time complexity:    O(n*log(n))
#           space complexity:   O(n)
# def is_happy(n)
#     record = Set.new

#     while 1
#         n = squaredSum(n)
        
#         return false if record.include?(n)
#         return true if n == 1

#         record << n
#     end

#     squaredSum(n)
# end

# second solution: use fast & slow pointers

def is_happy(n)
    slow_pointer = n
    fast_pointer = n

    while 1
        if fast_pointer == 1
            break;
        end
        slow_pointer = squaredSum(slow_pointer)
        fast_pointer = squaredSum(squaredSum(fast_pointer))
        if slow_pointer == fast_pointer
            break
        end
    end

    if fast_pointer == 1
        return true
    end
    return false
end

puts is_happy(15)   # false
puts is_happy(2)    # false
puts is_happy(23)   # true
puts is_happy(19)   # true