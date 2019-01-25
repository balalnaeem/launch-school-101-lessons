VALID_CHOICES = %w(r p s l k)
WINNING_SCORE = 5
PLAY_AGAIN = ['y', 'n']
WIN_COMBINATION = {
  'r' => ['l', 's'],
  'p' => ['r', 'k'],
  's' => ['p', 'l'],
  'l' => ['k', 'p'],
  'k' => ['s', 'r']
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WIN_COMBINATION[first].include?(second)
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

loop do
  user_score = 0
  comp_score = 0

  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      prompt("
        1) 'r' for Rock
        2) 'p' for Paper
        3) 's' for Scissors
        4) 'l' for Lizard
        5) 'k' for Spock")
      choice = gets.chomp.downcase

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt "That's not a valid choice."
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt "You chose #{choice}, computer chose #{computer_choice}."

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      user_score += 1
    elsif win?(computer_choice, choice)
      comp_score += 1
    end

    if user_score == WINNING_SCORE
      puts "You have won 5 times. You are the grand winner."
      break
    elsif comp_score ==  WINNING_SCORE
      puts 'Computer has won 5 times. Computer is the grand winner.'
      break
    end
  end

  prompt("Would you like to play again? (y/n)")

  answer = ''
  loop do
    answer = gets.chomp.downcase
    if PLAY_AGAIN.include?(answer)
      break
    else
      prompt "That's not a valid answer. Enter again."
    end
  end

  break unless answer == 'y'
end

prompt("Thanks playing Rock Paper Scissors Lizard and Spock with me.")
