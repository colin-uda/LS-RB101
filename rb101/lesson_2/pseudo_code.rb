# 1. a method that returns the sum of two integers
#Casual
    - Prompt the user to input two numbers
    - Get the input from the user and validate both are integers
    - If both are integers, then save to variables. If not, ask again.
    - Add the two variables together and return the sum.
    
# Formal
START
    - PUTS "Enter the first integer"
    - GETS input from user
    - IF input.to_i == integer
      - SET input == number_1
      ELSE
      - PUTS "Please enter a valid integer"
    
    - PUTS "Enter the second integer"
    - GETS input from user
    - IF input.to_i == integer
      - SET input == number_2
      ELSE
      - PUTS "Please enter a valid integer"
    
    SET sum = number_1 + number_2
    PUTS "The sum of the two numbers is #{sum}!"
END

# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
# Casual
    - Given an array of string 
    - Iterate through the array of strings
    - Create an empty string called concatenated_strings
    - For each iteration, append each element of the array to the concatenated_strings array.
    - Return concatenated_strings
# Formal
START

    # Given an array of strings
    - SET concatenated_strings = ""
    - ITERATE through the array of strings using EACH
    - PUSH each array element + " " in the concatenated_strings 
    - RETURN concatenated_strings
    
END

# 3. a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. 
# Casual
    - Given an array of integers
    - Create a new array called every_other
    - Iterate through the array of integers
    - Append every other iteration (starting at index 0) to every_other
    - Return every_other
# Formal 
START

    # Given an array of integers
    SET every_other = []
    USE the EACH_WITH_INDEX on the array (number, idx)
    IF idx.even? 
      every_other << number 
    
    RETURN every_other
    
END

# 4. a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.
# Casual
    - Given a character in a string 
    - Create a variable array and set it equeal to the given string.split("")
    - Create a variable occurance and set it equal to 1
    - Iterate through the array to find the 3rd occurence of the character
    - If array contains the character and occurance does not equal 3
    - Add 1 to occurence
    - Elsif array contains the character and occurance does equal 3 then return index
    - Elsif index == array.length - 1 then return nil 
    
# Formal 
START

    # Given a character in a string
    
    SET the variable occurance = 1
    SET the variable array == (GivenString).split("")
    USE EACH_WITH_INDEX(number, idx) to iterate on the array
    IF number == (character) && occurance != 3
      occurance += 1
    ELSIF number == (character) && occurance == 3
      return idx
    ELSIF idx == array.length - 1 
      return nil

END

# 5. a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. 
# Casual
    - Given two equal length, integer arrays.
    - Set variable merged_array to an empty array
    - Set variable iteration equal to 0 
    - While iteration does not equal the length of the first array
    - Add the first array element, then the second array element
    - Return merged_array

# Formal 
START

    # Given two equal length, integer arrays (arr1 and arr2)
    
    SET merged_array = []
    SET iteration = 0
    
    WHILE iteration != arr1.length
      PUSH arr1[iteration] into merged_array
      PUSH arr2[iteration] into merged_array
    
    RETURN merged_array
  
END 
 