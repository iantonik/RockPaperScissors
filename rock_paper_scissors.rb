=begin

Assignment #2 Rock, Paper, Scissors

Paper covers a Rock.      (Paper beats a Rock.)
Scissors cut Paper.       (Scissors beat Paper.)
A Rock smashes Scissors.  (A Rock beats Scissors.)
Anything else is a "draw".

=end

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

puts 'Play Rock, Paper, Scissors!'


def get_winner(player_move, comp_move)
  if (player_move == comp_move)
    return nil
  end
  case player_move
    when 'p'
      return comp_move == 'r'
    when 'r'
      return comp_move == 's'
    when 's'
      return comp_move == 'p'
  end
end

def get_message(winner_move)
  case winner_move
    when 'r'
      return 'Rock smashes scissors.'
    when 's'
      return 'Scissors cut paper.'
    when 'p'
      return 'Paper covers rock.'
  end
end

loop do

  begin
    puts 'Make your selection: Rock (r), Paper (p), or Scissors (s).'
    user_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(user_choice)

  computer_choice = CHOICES.keys.sample

  puts "You picked #{CHOICES[user_choice]}, and computer picked #{CHOICES[computer_choice]}."

  result = get_winner(user_choice, computer_choice)

  if result == nil
    puts "It's a draw!!!"
  else
    puts get_message(result ? user_choice : computer_choice)
    puts result ? "You win!!!" : "Computer Wins!!!"
  end

  puts 'Play Again? (Y/N)'
  answer = gets.chomp.downcase
  break if answer == 'n'

end

puts 'Thanks for playing.'

