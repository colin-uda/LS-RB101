# Error because you can't add a string to an integer.
puts "the value of 40 + 2 is " + (40 + 2)

# Answer: String interpolation
puts "the value of 40 + 2 is #{40 + 2}"

# Change integer into a string.
puts "the value of 40 + 2 is " + (40 + 2).to_s
