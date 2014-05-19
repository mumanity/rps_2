class RPS::Round
attr_accessor :player1, :player2, :move1, :move2, :winner, :round_id

  def initialize(player1, player2, move1, move2, winner, round_id)
    @player1 = player1
    @player2 = player2
    @move1 = move1
    @move2 = move2
    @winner = winner
    @round_id = round_id
  end

end
