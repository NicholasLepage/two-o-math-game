require './player.rb'

class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def check_answer(number1, number2, ans)
    if (number1 + number2) == ans
      return true
    else
      return false
    end
  end


  def ask_questions(player)
    puts "==== NEXT QUESTION ===="
    number1 = rand(1..20)
    number2 = rand(1..20)
    puts "#{player.name}, it's your turn!"
    puts "What is #{number1} + #{number2}?"
    ans = gets.chomp.to_i

    if check_answer(number1, number2, ans) == true
      puts "Good job!"
    else
      puts "You're a disgrace. this is simple maths!"
      player.lives -= 1
      puts "Lives left: #{player.lives}"
    end

    if player.lives == 0 && @player2.lives > 0
      puts "#{@player2.name} wins with #{@player2.lives}/3 lives!"
      exit(0)
    elsif player.lives == 0 && @player1.lives > 0
      puts "#{@player1.name} wins with #{@player1.lives}/3 lives!"
      exit(0)
    end

  end
    


  def start_game
    puts "Game starting in 5"
    sleep 5
    while (@player1.lives > 0 || @player2.lives > 0) do
      ask_questions(@player1)
      ask_questions(@player2)
    end
  end

end