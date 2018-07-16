require ('./game.rb')
require ('./player.rb')

puts "Welcome to this great math game! Player 1, insert your name: "

player1 = gets.chomp.to_s

firstPlayer = Player.new(player1)

puts "Hello, #{firstPlayer.name}. Player 2, please insert your name: "

player2 = gets.chomp.to_s

secondPlayer = Player.new(player2)

puts "#{firstPlayer.name}, #{secondPlayer.name}, let's get the show on the road!"
puts "You both start with #{firstPlayer.lives} lives. Answer a question wrong and you'll lose a life! Last man standing wins."

game = Game.new(firstPlayer, secondPlayer)

game.start_game