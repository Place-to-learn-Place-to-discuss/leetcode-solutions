# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    if nums.length == nums.uniq.length
        return false
    end
    true
end

puts contains_duplicate([1,2,3,1]) #true
puts contains_duplicate([1,2,3,4]) #false
puts contains_duplicate([1,1,1,3,3,4,3,2,4,2]) #true

