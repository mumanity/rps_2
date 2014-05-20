class RPS::Round
attr_accessor :id, :game_id, :p1_move, :p2_move, :winner

  def initialize(id, game_id, p1_move, p2_move, winner, round_id)
    @id = id
    @game_id = game_id
    @p1_move = p1_move
    @p2_move = p2_move
    @winner = winner
  end

end
