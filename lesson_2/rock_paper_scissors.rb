VALID_CHOICES = %w(r p s l k)
WINNING_SCORE = 5
PLAY_AGAIN = ['y', 'n']
WIN_MOVES = {
  'r' => ['s', 'l'],
  'p' => ['r', 'k'],
  's' => ['p', 'l'],
  'l' => ['k', 'p'],
  'k' => ['s', 'r']
}

def prompt(message)
  puts ">> #{message}"
end

def win?(first, second)
  WIN_MOVES[first].include?(second)
end

def display_choice_word(choice)
  if choice == 'r'
    'rock'
  elsif choice == 'p'
    'paper'
  elsif choice == 's'
    'scissors'
  elsif choice == 'l'
    'lizard'
  elsif choice == 'k'
    'spock'
  end
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You have won!")
  elsif win?(computer, player)
    prompt("Computer have won!")
  else
    prompt("Its a tie")
  end
end

prompt("Welcome to Rock, Paper and Scissors.")
prompt("Winning score for this game is #{WINNING_SCORE}.")

loop do
  user_score = 0
  comp_score = 0

  loop do
    user_choice = ''

    loop do
      prompt("Pick one option from #{VALID_CHOICES.join(', ')}.")
      prompt(" 1) r for rock
      2) p for paper
      3) s for scissors
      4) l for lizard
      5) k for spock")
      user_choice = gets.chomp.downcase

      if VALID_CHOICES.include?(user_choice)
        break
      else
        prompt("That doesn't seem like a valid choice. Pick again.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{display_choice_word(user_choice)}.")
    prompt("And computer chose #{display_choice_word(computer_choice)}.")

    display_results(user_choice, computer_choice)

    if win?(user_choice, computer_choice)
      user_score += 1
    elsif win?(computer_choice, user_choice)
      comp_score += 1
    end

    if user_score >= 5
      break
    elsif comp_score >= 5
      break
    end

    prompt("Your score is #{user_score}. Computer score is #{comp_score}.")
  end

  if user_score == 5
    puts "You won 5 times. You are the grand winner!"
  elsif comp_score == 5
    puts "Computer won 5 times. Computer is the grand winner."
  end

  prompt("Do you want to play? (Y/N)")

  answer = ''
  loop do
    answer = gets.chomp.downcase
    if PLAY_AGAIN.include?(answer)
      break
    else
      prompt("Please enter a valid answer. (Y/N)")
    end
  end
  break unless answer == 'y'
end

prompt("---------------------")

prompt("Thank you for playing. Goodbye!")
