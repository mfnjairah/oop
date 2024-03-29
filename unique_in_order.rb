def unique_in_order(sequence)
    collection = []

    if sequence.is_a?(String)
        sequence.chars.each do |element|
            if collection.empty? || collection.last != element
                collection.push(element)
            end
        end
    elsif sequence.is_a?(Array)
        sequence.each do |element|
            if collection.empty? || collection.last != element
                collection.push(element)
            end
        end
    else
        puts "Unsupported data type"
        return
    end

    collection
end

# Test cases
puts unique_in_order('AAAABBBCCDAABBB').inspect  # ['A', 'B', 'C', 'D', 'A', 'B']
puts unique_in_order('ABBCcAD').inspect           # ['A', 'B', 'C', 'c', 'A', 'D']
puts unique_in_order([1, 2, 2, 3, 3]).inspect     # [1, 2, 3]
