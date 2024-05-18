require 'date'

def my_data_transform(csv_content)
    lines = csv_content.split("\n")
    i = 1
    while (i < lines.length)
        data = lines[i].split(",")
        lines[i] = manage_data(data)
        i += 1
    end

    return lines
end

def get_email_provider(email) 
    i = 0 
    while (email[i] != '@' && i < email.length)
        i += 1
    end
    i += 1
    if (i < email.length)
        return email[i, email.length - i]
    else
        return ""
    end
end

def get_time_frame(time)
    d = DateTime.parse(time)
    if (d.hour >= 6 && d.hour <= 11)
        return "morning"
    elsif (d.hour >= 12 && d.hour <= 17)
        return "afternoon"
    elsif (d.hour >= 18 && d.hour <= 23)
        return "evening"
    end
end

def get_age_group(age)
    if (age < 1 || age > 99) 
        return ""
    end
    if (age <= 20)
        return "1->20"
    elsif (age <= 40)
        return "21->40"
    elsif (age <= 65)
        return "41->65"
    elsif (age <= 99)
        return "66->99"
    end
end

def manage_data(data) 
    if data.length != 10
        return ""
    end

    data[4] = get_email_provider(data[4])
    data[5] = get_age_group(data[5].to_i)
    data[9] = get_time_frame(data[9])

    return data.join(",")
end

# print my_data_transform("Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At\nMale,Carl,Wilderman,carl,wilderman_carl@yahoo.com,29,Seattle,Safari iPhone,2,2020-03-06 16:37:56\nMale,Marvin,Lind,marvin,marvin_lind@hotmail.com,77,Detroit,Chrome Android,2,2020-03-02 13:55:51\nFemale,Shanelle,Marquardt,shanelle,marquardt.shanelle@hotmail.com,21,Las Vegas,Chrome,1,2020-03-05 17:53:05\nFemale,Lavonne,Romaguera,lavonne,romaguera.lavonne@yahoo.com,81,Seattle,Chrome,2,2020-03-04 10:33:53\nMale,Derick,McLaughlin,derick,mclaughlin.derick@hotmail.com,47,Chicago,Chrome Android,1,2020-03-05 15:19:48\n")
