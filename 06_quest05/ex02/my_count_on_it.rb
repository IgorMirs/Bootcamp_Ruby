def my_count_on_it(arr)
    res = Array.new(arr.length)
    i = 0
    while (i < arr.length) 
        res[i] = arr[i].length
        i += 1
    end

    return res
end

# print my_count_on_it(["This", "is", "the", "way"])