class RPS::Games
attr_accessor :id, :p1_id, :p2_id, :winner

  def initialize(data)
    @id = data[:id]
    @p1_id = data[:p1_id]
    @p2_id = data[:p2_id]
    @winner = nil
  end

end
