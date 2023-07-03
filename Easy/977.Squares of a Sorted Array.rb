# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    first_index = 0
    last_index = nums.length - 1

    new_nums = []

    while first_index <= last_index
        x1 = nums[first_index] ** 2
        x2 = nums[last_index] ** 2
        if x1 > x2
            new_nums.unshift(x1)
            first_index += 1
        elsif
            new_nums.unshift(x2)
            last_index -= 1
        end
    end

    new_nums.inspect
end

puts sorted_squares([-4, -1, 0, 3, 10])