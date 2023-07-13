
class LinkedList
    attr_accessor :val, :next

    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    return false if !head || !head.next

    slow_pointer = head
    fast_pointer = head

    while 1
        if !fast_pointer || !fast_pointer.next
            break
        end

        slow_pointer = slow_pointer.next
        fast_pointer = fast_pointer.next.next
        if slow_pointer == fast_pointer
            break
        end
    end

    if !fast_pointer || !fast_pointer.next
        return false
    end
    return true
end

#input: head = [3,2,0,-4], pos = 1
#output: true

#input: head = [1,2], pos = 0
#output: true

#input: head = [1], pos = -1
#output: false