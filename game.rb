require './helper'

class Game
  def initialize
    @turn = true
    @player1 = Player.new
    @player2 = Player.new
  end

  def start
    while @player1.lives > 0 && @player2.lives > 0
      if @turn
        current_player = @player1
      else 
        current_player = @player2
      end
      puts question(current_player.name)
      input = gets.chomp
      if input.to_s == @result.to_s
       puts "YES! You are Correct!" + "\n" + "#{@player1.name} has #{@player1.lives}/3 lives left VS #{@player2.name} has #{@player2.lives}/3 lives left" + "\n" + "------ NEW TURN ------"
      else
        current_player.lives -= 1
          puts "Seriously? No!" + "\n" + "#{@player1.name} has #{@player1.lives}/3 lives left VS #{@player2.name} has #{@player2.lives}/3 lives left" + "\n" + "------ NEW TURN ------"
      end  
      @turn = !@turn
    end
    if @player1.lives > @player2.lives
      puts "#{@player1.name} Wins!!!! with #{@player1.lives} lives remaining" + "\n" + "----- GAME OVER -----" + "\n" + "Good bye!"
    else
      puts "#{@player2.name} Wins!!!! with #{@player2.lives} lives remaining" + "\n" + "----- GAME OVER -----" + "\n" + "Good bye!"
    end
  end
end