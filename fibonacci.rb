def fib(n)
    result = []
    if n == 1
        return result.push(0)
    elsif n == 2
        return result.push(0,1)
    else
        result.push(0,1)
        accumulator = 2
        (n-2).times do
            result[accumulator] = result[accumulator-1] + result[accumulator-2]
            accumulator += 1
        end
        return result
    end
end

def fib_rec(n)
    return [0] if n == 1
    return [0,1] if n == 2
    sequence = fib(n-1)
    sequence.push(sequence[-1] + sequence[-2])
end
