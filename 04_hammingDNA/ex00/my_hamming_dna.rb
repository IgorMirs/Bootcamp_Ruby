def my_hamming_dna(dna1, dna2)
    if (dna1.length != dna2.length) 
        return -1
    end
    chars1 = dna1.split('')
    chars2 = dna2.split('')
    i = 0
    res = 0
    while i < dna1.length
        if chars1[i] != chars2[i]
            res += 1
        end
        i += 1
    end

    return res
end

# puts my_hamming_dna("GAGCCTACTAACGGGAT", "CATCGTAATGACGGCCT")
# puts my_hamming_dna("GGACTGA", "GGACTGA")
# puts my_hamming_dna("", "")