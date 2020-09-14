class Player
  attr_reader :name
  attr_accessor :lives
  
  @@player_num = 0
  
  def initialize
    @@player_num += 1
    @name = "Player " + @@player_num.to_s
    @lives = 3
  end
end