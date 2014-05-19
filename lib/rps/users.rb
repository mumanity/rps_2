class RPS::Users

  attr_reader :name, :password

  def initialize(data)
    @name = data[:name]
    @password = data[:password]
  end

end
