# require '../ex01/my_data_transform'

def make_hash(data, index)
    j = 1
    my_hash = Hash.new(0)
    while (j < data.size) 
        data_split = data[j].split(",")
        my_hash[data_split[index]] += 1
        j += 1
    end

    return my_hash
end

def my_data_process(data)
    cats = data[0].split(",")
    my_hash = Hash.new(0)
    # gender
    my_hash[cats[0]] = make_hash(data, 0) 
    # email
    my_hash[cats[4]] = make_hash(data, 4) 
    # age
    my_hash[cats[5]] = make_hash(data, 5) 
    # city
    my_hash[cats[6]] = make_hash(data, 6) 
    # device
    my_hash[cats[7]] = make_hash(data, 7) 
    # order at
    my_hash[cats[9]] = make_hash(data, 9) 
    out = my_hash.to_s.gsub!("=>", ":")

    return out.gsub!(", ", ",")
end

# data_trans = my_data_transform("Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At\nMale,Carl,Wilderman,carl,wilderman_carl@yahoo.com,29,Seattle,Safari iPhone,2,2020-03-06 16:37:56\nMale,Marvin,Lind,marvin,marvin_lind@hotmail.com,77,Detroit,Chrome Android,2,2020-03-02 13:55:51\nFemale,Shanelle,Marquardt,shanelle,marquardt.shanelle@hotmail.com,21,Las Vegas,Chrome,1,2020-03-05 17:53:05\nFemale,Lavonne,Romaguera,lavonne,romaguera.lavonne@yahoo.com,81,Seattle,Chrome,2,2020-03-04 10:33:53\nMale,Derick,McLaughlin,derick,mclaughlin.derick@hotmail.com,47,Chicago,Chrome Android,1,2020-03-05 15:19:48\n")
# print my_data_process(data_trans)

