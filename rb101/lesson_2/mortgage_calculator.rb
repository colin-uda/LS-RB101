def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
prompt("Welcome to the Mortgage Calculator!")
prompt("-----------------------------------")

  prompt("What's your loan amount?")
  loan_amount = ''
  loop do 
    loan_amount = gets.chomp
    
    if loan_amount.to_f < 0 || loan_amount.empty?
      prompt("Please enter a positive number.")
    else
      break
    end 
  end 
  

  prompt("What's your Annual Percentage Rate (APR)? Example: If 5% then input 5")
  monthly_apr = ''
  loop do 
    annual_apr = gets.chomp
    
    if annual_apr.to_f < 0 || annual_apr.empty?
      prompt("Please enter a positive number.")
    else
      annual_apr = annual_apr.to_f / 100
      monthly_apr = annual_apr / 12
      break
    end 
  end 
  
  # good 
  prompt("Loan Duration? Please enter in years:")
  loan_duration_months = ' '
  loop do 
    loan_duration_years = gets.chomp
    
    if loan_duration_years.empty? || loan_duration_years.to_i < 0
      prompt("Please enter a valid number.")
    else
      loan_duration_months = loan_duration_years.to_f * 12
      break
    end 
  end 
  
  monthly_payment = loan_amount.to_f * (monthly_apr / (1 - (1 + monthly_apr)**(-loan_duration_months)))
  prompt("Your monthly payment is: $#{format('%.2f',monthly_payment.to_f)}!")
  
  prompt("Would you like another calculation? (Press 'Y' for yes)")
  answer = gets.chomp
  break unless answer.downcase == 'y'
end 

prompt("Thank you for using the calculator!")