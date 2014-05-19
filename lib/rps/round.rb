class RPS::Round

attr_accessor :game_id, :winner, :move1, :move2

  def initialize(data)
    @move1 = data[:move1]
    @move2 = data[:move2]
    @game_id = data[:game_id]
    @winner = data[:winner]
  end

end
