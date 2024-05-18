def my_is_sort(arr) 
    if arr.length == 0 || arr.length == 1
        return true
    end
    i = 0
    des = false
    asc = false
    while i < arr.length - 1
        while arr[i] == arr[i + 1]
            i += 1
        end
        if arr[i] < arr[i + 1] && des
            return false
        elsif arr[i] > arr[i + 1] && asc
            return false
        elsif arr[i] > arr[i + 1]
            des = true
        elsif arr[i] < arr[i + 1]
            asc = true
        end
        i += 1
    end
    return true
end

# print my_is_sort([4, 7, 0, 3])