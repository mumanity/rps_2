class RPS::Game
attr_accessor :player1, :player2, :winner, :player1_wins, :player2_wins

  def initialize(data)
    @player1 = data[:player1]
    @player2 = data[:player2]
    @player1_wins = 0
    @player2_wins = 0
  end
end
