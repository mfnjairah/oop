def centuryFromYear(year)
    puts (year - 1) / 100 + 1
end

centuryFromYear(1705) # => 18
centuryFromYear(1900) # => 19
centuryFromYear(1601) # => 17
centuryFromYear(2000) # => 20