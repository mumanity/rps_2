class RPS::Users

  attr_reader :id, :password

  def initialize(data)
    @id = data[:id]
    @password = data[:password]
  end

end
