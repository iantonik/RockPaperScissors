=begin

Assignment #2 Rock, Paper, Scissors

Paper covers a Rock.      (Paper beats a Rock.)
Scissors cut Paper.       (Scissors beat Paper.)
A Rock smashes Scissors.  (A Rock beats Scissors.)
Anything else is a "draw".

=end

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

puts 'Play Rock, Paper, Scissors!'


loop do

  begin
    puts 'Make your selection: Rock (r), Paper (p), or Scissors (s)'
    user_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(user_choice)

  computer_choice = CHOICES.keys.sample

  puts "You picked #{CHOICES[user_choice]}, and computer picked #{CHOICES[computer_choice]}."

  if user_choice == computer_choice
    puts "Its a draw!!!"
  elsif (user_choice == 'p' && computer_choice =='r') || (user_choice == 'r' && computer_choice == 's' ) || ( user_choice == 's' && computer_choice == 'p')
    puts 'You won!!!'
  else
    puts 'Computer won!!!'
  end

  puts 'Play Again? (Y/N)'
  answer = gets.chomp.downcase
  break if answer == 'n'

end

puts 'Thanks for playing!'

