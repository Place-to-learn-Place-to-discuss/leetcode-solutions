# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
    return nil if !head
    return head if !head.next

    slow_pointer = head
    fast_pointer = head

    while 1
        if !fast_pointer || !fast_pointer.next
            break
        end
        slow_pointer = slow_pointer.next
        fast_pointer = fast_pointer.next
        fast_pointer = fast_pointer.next
    end

    slow_pointer
end

# input:    [1,2,3,4,5]
# output:   [3,4,5]