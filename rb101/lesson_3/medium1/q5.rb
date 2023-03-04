# Method definitions have a self-contained scope, so it can't access the limit variable unless we add limit as another parameter.

limit = 22

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"