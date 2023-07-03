#Given an array of unsorted numbers, 
# find all unique triplets in it that add up to zero.


def SearchTriplets(arr)
    arr.sort!

    triplet = []

    for i in 0..arr.length-1
        next if i > 0 && arr[i] == arr[i-1]

        search_pair(arr, -arr[i], i+1, triplet)
    end
    triplet.inspect
end

def search_pair(arr, target, left, triplet)
    right = arr.length - 1

    while left <= right
        sum = arr[right] + arr[left]
        if sum == target
            triplet << [-target, arr[left], arr[right]]
            left += 1
            right -= 1
            while left < right && arr[left] == arr[left - 1]
                left += 1
            end

            while left < right && arr[right] == arr[right + 1]
                right -= 1
            end
        elsif sum < target
            left += 1
        else
            right -= 1
        end
    end
end

puts SearchTriplets([-3, 0, 1, 2, -1, 1, -2])
# [[-3, 1, 2], [-2, 0, 2], [-2, 1, 1], [-1, 0, 1]]

# Input: [-5, 2, -1, -2, 3]
# Output: [[-5, 2, 3], [-2, -1, 3]]
# Explanation: There are two unique triplets whose sum is equal to zero.