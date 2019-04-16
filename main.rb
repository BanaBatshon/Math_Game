# planning:

# Nouns: 
# - Player: 
    # - state: name, lives
    # - behavior:
# - Game:
    # - state: players, lives
    # - behavior: checks_answer, generte_quation, 
# - Methods:
# - Question:
    # - prints the turn of the player
    # - behavior: generates an eqn from two random numbers
    # - invokes the check answer function
# - Answer:
    # - behavior: checks the players answer VS the correct answer
    # - if true prints correct
    # - if false prints wrong and subtracts a life
    # - invokes the start method
# - Start:
    # - invokes the switch player method
    # - if game is still going (lives > 0), it invokes the question method
    # - if a player has lost, prints who won by how many lives
# = Swith user method:
    # - switches the current player

class Player
  attr_accessor :name, :lives

  def initialize name
    @name = name
    @lives = 3
  end

end

class Game 
  attr_accessor :player1, :player2

  def initialize player1, player2
    @player1 = Player.new player2
    @player2 = Player.new player1
    @current_player = @player1
    puts 'Welcome to the game'
    self.start
  end

  def start 
    if (@player1.lives && @player2.lives) > 0
      self.switch_player
      self.generate_question
    else
    puts (@player1.lives > @player2.lives)? "#{@player1.name} wins with #{@player1.lives}" : "#{@player2.name} wins with #{@player2.lives}"
    end

  end


  def switch_player
    @current_player == @player1? @current_player = @player2 : @current_player = @player1
  end

  def generate_question
  
    num1 = rand(1..20)
    num2 = rand(1..20)
    @answer = num1 + num2
    puts "#{@current_player.name} it's your turn!"
    puts question = "what does #{num1} plus #{num2} equal?"
    player_answer = gets.chomp.to_i
    self.checks_answer player_answer
  end

  def checks_answer player_answer
    if player_answer == @answer
      puts "Bravoooo"
      self.start
    else
      puts "Seriosuly? No"
      @current_player.lives -= 1
    end
    self.start
  end


end



gameone = Game.new 'Bana', 'Ronan'


