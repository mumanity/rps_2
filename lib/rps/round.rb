class RPS::Round
attr_accessor :id, :game_id, :p1_move, :p2_move, :winner

  def initialize(data)
    @id = data[:id]
    @game_id = data[:game_id]
    @p1_move = data[:p1_move]
    @p2_move = data[:p2_move]
    @winner = nil
  end

end
