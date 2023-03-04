# Purpose of the number % divisor == 0 is because if there is a remainder, then it isn't a factorial.
# Purpose of the factors is to return to factorials. Last line executed is what's returned.
def factors(number)
  divisor = number
  factors = []
  return "Please enter a positive number." if number <= 0
  
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(8)