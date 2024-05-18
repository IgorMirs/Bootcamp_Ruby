def my_string_index(heystack, needle)
    chars = heystack.split('')

    i = 0
    while i < heystack.size 
        if chars[i] == needle
            return i
        end
        i += 1
    end

    return -1
end

# puts my_string_index("hello", "b") 