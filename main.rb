# planning:

# nouns: 
# - player: 
    # - state: name, lives
    # - behavior:
# - Question:
    # - state: 
    # - behavior: generates an eqn from two random numbers
# - game:
    # - state: players, lives
    # - behavior: checks_answer, generte_quation, 

class Player
  attr_accessor :name, :lives

  def initialize name, lives
    @name = name
    @lives = 3
  end

end



player1 = Player.new 'Bob'
player2 = Player.new 'Bobette'
puts player1.name = 'natasha'
puts player2.lives
puts Question

# Game.new player1, player2
#  puts Game.new 'Bana', 'Ronan'
