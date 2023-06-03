# @param {String} s
# @return {Boolean}
# def is_valid(s)
#     brack = { ")" => "(", "}" => "{", "]" => "[" }
#     stack = ""

#     s.each_char do |cha|
#         last_char = stack[-1] || "#"
#         if brack[cha] == last_char
#             stack.chop!
#         elsif
#             stack += cha
#         end
#     end
#     stack.empty?
# end


# @param {String} s
# @return {Boolean}
def is_valid(s)
    return true if s.empty?
    
    stack = []
    s.each_char do |c|
        case c
        when '(', '{', '['
            stack.push(c)
        when ')'
            return false if stack.pop() != '('
        when '}'
            return false if stack.pop() != '{'
        when ']'
            return false if stack.pop() != '['
        end
    end
    return stack.empty?
end