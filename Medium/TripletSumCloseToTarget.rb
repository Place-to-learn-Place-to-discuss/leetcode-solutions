#Given an array of unsorted numbers and a target number, find a triplet in the array whose sum is as close to the target number as possible, 
#return the sum of the triplet. If there are more than one such triplet, return the sum of the triplet with the smallest sum.


def SearchTriplets(arr, target)
    arr.sort!

    min_distance = Float::INFINITY

    for i in 0..arr.length-2
        left = i + 1
        right = arr.length - 1

        while left < right
            target_differ = target - arr[i] - arr[left] - arr[right]
            if target_differ == 0
                return target
            end

            if target_differ.abs < min_distance.abs or (target_differ.abs == min_distance.abs and target_differ > min_distance)
                min_distance = target_differ
            end

            if target_differ > 0
                left += 1
            else
                right -= 1
            end
        end
    end

    return target - min_distance
end

puts SearchTriplets([-1, 0, 2, 3], 3) # output: 2

#   input: [-3, -1, 1, 2], target: 1
#   output: 0

#   input: [1, 0, 1, 1], target: 100
#   output: 3


#   input: [0, 0, 1, 1, 2, 6], target: 5
#   output: 4s