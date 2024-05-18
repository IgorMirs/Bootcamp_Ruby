def my_csv_parser(input, separ)
    lines = input.split("\n")
    i = 0
    res = Array.new(lines.length)
    while (i < lines.length)
        res[i] = lines[i].split(",")
        i += 1
    end

    return res
end

# print my_csv_parser("a,b,c,e\n1,2,3,4\n", ',')