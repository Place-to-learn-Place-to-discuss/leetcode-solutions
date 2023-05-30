# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)

    hash = {}
    nums.each_with_index do |number, index|
        if hash[target-number]
            return [hash[target-number], index]
        else
            hash[number] = index
        end
    end
end

puts two_sum([2,7,11,15], 9) # [0, 1]
puts two_sum([3,2,4], 6) # [1, 2]
puts two_sum([3,3], 6) # [0, 1]