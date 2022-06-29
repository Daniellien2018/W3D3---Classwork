def iter_range(start, end_n)
    arr = []
    (start...end_n).each do |n|
        arr << n
    end
    return arr
end

p iter_range(1,5) #--4 
p iter_range(1,1)
p "_________"
puts

def rec_range(start, end_n)
    return [] if start == end_n

    rec_range(start, end_n - 1) << end_n - 1
    #rec_range(start,end_n -1)[0]
    #[]
end

p rec_range(1,6)
p rec_range(1,7)
p rec_range(2,6)
p "_________"
puts

def exponent_1(b, n)
    return 1 if n == 0
    b * exponent_1(b, n - 1)
end

p exponent_1(2, 5)
p exponent_1(3, 6)
p "_________"
puts

def exponent_2(b, n)
    return b if n == 1
    exp = exponent_2(b, (n)/2) 
    if n.even?
        exp * exp
    else
        b * (exp) * (exp)
    end
end

p exponent_2(2, 5)
p exponent_2(2, 6)
p exponent_2(2, 8)
p exponent_2(2, 256)
p "_________"
puts








