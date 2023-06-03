# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x_string = x.to_s
    left_point = 0
    right_point = x_string.length - 1

    while left_point < right_point
        if x_string[left_point] != x_string[right_point]
            return false
        end
        left_point += 1
        right_point -= 1
    end
    true
end

puts is_palindrome 121 #true