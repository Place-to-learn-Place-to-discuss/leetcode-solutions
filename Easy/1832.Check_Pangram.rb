# @param {String} sentence
# @return {Boolean}
def check_if_pangram(sentence)
    alpha = Hash.new

    sentence.split("").each do |word|
        if word.match(/[a-z]/i)
            alpha[word] = 1
        end
    end

    if alpha.length == 26
        return true
    end
    false

end

puts check_if_pangram("thequickbrownfoxjumpsoverthelazydog") #true
puts check_if_pangram("leetcode") #false
