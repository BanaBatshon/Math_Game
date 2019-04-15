# planning:

# nouns: 
# - players : gets names of two players
# - lives : starts at 3, keeps track of lives of player 1 & 2
# - Math equation : generates two random numbers to add
# - Math answer: checks if the players answers are correct  

class Player
  attr_accessor :name

  def initialize name
    @name = name
  end

end

player1 = Player.new 'Bob'
player2 = Player.new 'Bobette'
puts player1.name
puts player2.name
