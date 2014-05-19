class RPS::Round

attr_accessor :game_id, :winner

  def initialize(data)
    @game_id = data[:game_id]
    @winner = data[:winner]
  end

end
