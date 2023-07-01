# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    return list2 if list1.nil?
    return list1 if list2.nil?

    result = ListNode.new
    current = result

    while list1 != nil && list2 != nil
        if list1.val < list2.val
            current.next = list1
            list1 = list1.next
        else
            current.next = list2
            list2 = list2.next
        end
        current = current.next
    end

    if list1 != nil
        current.next = list1
        list1 = list1.next
    end

    if list2 != nil
        current.next = list2
        list2 = list2.next
    end

    return result.next

end