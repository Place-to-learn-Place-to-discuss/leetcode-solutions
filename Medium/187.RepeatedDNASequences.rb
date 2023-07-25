require 'set'

# @param {String} s
# @return {String[]}
# def find_repeated_dna_sequences(s, k = 10)
#     sequence_set = Set.new
#     result = Set.new

#     (s.length - k + 1).times do |i|
#         currenct_sequence = s[i...i+k]

#         if sequence_set.include?(currenct_sequence)
#             result << currenct_sequence
#         end

#         sequence_set << currenct_sequence
#     end
    
#     result.to_a
# end

def find_repeated_dna_sequences(s, k = 10)
    sequence_set = {}
    sequence_set.default = 0

    (s.length - k + 1).times.with_object([]) do |i, result|
        sequence = s[i, k]
        result << sequence if sequence_set[sequence] == 1
        sequence_set[sequence] += 1
    end
end


puts find_repeated_dna_sequences("AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT")
puts find_repeated_dna_sequences("AGCTGAAAGCTTAGCTG", 5)
puts find_repeated_dna_sequences("AGAGCTCCAGAGCTTG", 6)
