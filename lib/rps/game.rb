class RPS::Game

attr_accessor :player1, :player2, :winner
  def initialize(data)
    @player1 = data[:player1]
    @player2 = data[:player2]
    @winner = data[:winner]
  end

end
