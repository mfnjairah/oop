def remove_vowels(string)
    consonants = []
    vowels = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']

    string.each_char do |letter|
        if !vowels.include?(letter)
            consonants.push(letter)
        end
    end
    consonants.join
end

puts remove_vowels("This is my text")