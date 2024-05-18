def my_map_mult_two(arr)
    i = 0
    while (i < arr.length) 
        arr[i] *= 2
        i += 1
    end
    return arr
end

# print my_map_mult_two([1, 2, 3, 4, 5])