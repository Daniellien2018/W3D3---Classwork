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

def deep_dup(data)
    return [data.dup] if !data.is_a?(Array)

    data.each {|ele| deep_dup(ele)}   
end

p deep_dup([
    ["nuts", "bolts", "washers"],
    ["capacitors", "resistors", "inductors"]
  ])
p [1, [2], [3, [4]]].object_id
p deep_dup([1, [2], [3, [4]]])
p [1, [2], [3, [4]]].object_id
p "_________"
puts

#[1,2,3,4,5,6,7,8,9]
#[0,1,1,2,3,5,8,13,21]
def fibonacci(n)
    return nil if n < 1 
    return [0] if n == 1
    return [0,1] if n == 2

    fib = fibonacci(n-1)
    fib << fib[-1] + fib[-2]

end
p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(10)
p "_________"
puts

def bsearch(array, target)
    
    return nil if array.empty?
    mid = array.length/2
    return mid if array[mid] == target
    if target > array[mid]
        b = bsearch(array[mid+1..-1],target)
        if b.nil?
            return nil
        else
            return b + mid + 1
        end
    else
        bsearch(array[0...mid],target)
    end
end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil
p "_________"
puts


def merge_sort(array) #[1]
    return [] if array.length == 0
    return array if array.length == 1

    mid = array.length / 2 
    left = array[0...mid]
    right = array[mid..-1]
    left_sort = merge_sort(left)
    right_sort = merge_sort(right)
    merge(left_sort, right_sort)
end

def merge(left, right)
    merged = []
    until left.length == 0 || right.length == 0
        if left[0] < right[0]
            merged << left.shift
        else
            merged << right.shift
        end
    end
    merged + left + right
end


p merge_sort([])
p merge_sort([5])
p merge_sort([5,3]) 
p merge_sort([38,27,43,3,9,82,10])







