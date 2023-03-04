Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
# ! = 'not' or means a descructive method. ? = responds with a true or false answer.

what is != and where should you use it?
# "Does not equal". You should use this when iterating through an object

put ! before something, like !user_name
# "If user_name is not true". All objects beside false or nil are truthy. ! reverses that 
put ! after something, like words.uniq!
# Descructive method. words will only contain unique values.
put ? before something
# Acts as ternary operator. Shorthand for if/else statement
put ? after something
# indicates that a method returns a boolean value (true or false) or an object to indicate a true value (or “truthy” value).
put !! before something, like !!user_name
# It's useful because you can use it to get a boolean from any value. The first ! will convert the argument to a boolean, e.g. true if it's nil or false, and false otherwise. The second will negate that again so that you get the boolean value of the argument, false for nil or false, true for just about everything else.
# user_name will be changed to the oposite boolean, then change back to a appropriate boolean.