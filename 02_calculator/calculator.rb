def add(a,b)
    a + b
end

def subtract(a,b)
    a - b
end

def sum(array)
    sum = 0
    array.each {|a| sum += a}
    sum
end

def multiply(a,b)
    a * b
end

def power(a,b)
    a**b
end

def factorial(a)
    if a == 1 || a == 0
        return 1
    end
    a * factorial(a-1)
end
