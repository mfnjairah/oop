def is_isogram(string)
    collection = []

    string.downcase.each_char do |letter|
        if collection.include?(letter)
            puts false
            return
        else
            collection.push(letter)
        end
    end
    puts true
end

is_isogram("Dermatoglyphics" ) # true
is_isogram("regulations") # true
is_isogram("aba" ) # false
is_isogram("moOse" ) # false # -- ignore letter case