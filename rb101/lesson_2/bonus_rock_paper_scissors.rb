VALID_CHOICES = %w(r p s l v)

def prompt(message)
  Kernel.puts("=> #{message}")
end 

def win?(first, second)
  (first == 'r' && (second == 's' || second == 'l')) || 
  (first == 'p' && (second == 'r' || second == 'v')) ||
  (first == 's' && (second == 'p' || second == 'l')) ||
  (first == 'v' && (second == 's' || second == 'r')) ||
  (first == 'l' && (second == 'v' || second == 'p'))
end  

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def full_selection(input)
  case input
    when 'r' then 'rock'
    when 'p' then 'paper'
    when 's' then 'scissors'
    when 'v' then 'spock'
    else 'lizard'
  end 
end   


win_counter = 0
computer_counter = 0


loop do 
  choice = ''
  loop do
    prompt("Choose one: r = rock, p = paper, s = scissors, l = lizard, v = spock. First the 3 wins the game!")
    choice = Kernel.gets().chomp()
    
    if VALID_CHOICES.include?(choice.downcase)
      break
    else
      prompt("Not a valid choice.")
    end 
  end 
  
  computer_choice = ['r', 'p', 's', 'l', 'v'].sample
  
  Kernel.puts("You chose: #{full_selection(choice.downcase)}; Computer chose: #{full_selection(computer_choice)}.")
  
  display_results(choice.downcase, computer_choice)
 
  if win?(choice.downcase, computer_choice)
    win_counter += 1
    prompt("Your score: #{win_counter}. Computer's score: #{computer_counter}")
  elsif win?(computer_choice, choice.downcase)
    computer_counter += 1
    prompt("Your score: #{win_counter}. Computer's score: #{computer_counter}")
  else
    prompt("Your score: #{win_counter}. Computer's score: #{computer_counter}")
  end
  
  if win_counter == 3
    prompt("You won the game!")
    prompt("Do you want to play again?")
    answer = Kernel.gets().chomp()
    break unless answer.downcase == 'y'
  elsif computer_counter == 3
    prompt("The computer won the game!")
    prompt("Do you want to play again?")
    answer = Kernel.gets().chomp()
    break unless answer.downcase == 'y'
  else
    prompt("First the 3 wins the game!")
  end 

end 

prompt("Thank you for playing!")