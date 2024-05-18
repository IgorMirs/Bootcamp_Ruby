def my_roman_numerals_converter(num)
    digits = num.digits
    i = digits.size - 1
    out = String.new()
    while (i >= 0)
        out += digit_to_roman(digits[i], i)
        i -= 1
    end
    return out
end

def digit_to_roman(digit, rank) 
    low = 0
    high = 0
    highest = 0
    case rank
    when 0
        low = "I"
        high = "V"
        highest = "X"
    when 1
        low = "X"
        high = "L"
        highest = "C"
    when 2
        low = "C"
        high = "D"
        highest = "M"
    when 3
        low = "M"
    end
    case digit
    when 1
        return low
    when 2
        return low + low
    when 3
        return low + low + low
    when 4
        return low + high
    when 5
        return high
    when 6
        return high + low
    when 7
        return high + low + low
    when 8
        return high + low + low + low
    when 9
        return low + highest
    else
        return ""
    end 
end

# puts my_roman_numerals_converter(1990)
# puts my_roman_numerals_converter(2008)
# puts my_roman_numerals_converter(14)
# puts my_roman_numerals_converter(79)
# puts my_roman_numerals_converter(845)
# puts my_roman_numerals_converter(2022)