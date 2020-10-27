def oxford_comma(array)
    if array.length == 1
        str = array.join 
        str
    
    elsif array.length == 2
        array.insert(-2, "and")
        str = array.join(" ")  
        # str = str.insert(-2, "and") 
        str
    elsif array.length == 3
        array.insert(-2, "and")
        str = array.join(", ").sub("and,", "and")  
        # str = str.insert(-2, "and") 
        str
    
    else
        str = array.join 
        str = array.insert(-2, "and")
        str = array.join(", ").sub("and,", "and") 
        # str = array.join(" ")  
        # str = [str[0...-1].join(", "), str.last].join(", and ")
        str
    end  
end