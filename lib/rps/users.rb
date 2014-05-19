class RPS::Users

  attr_reader :name, :password

  def initialize(data)
    @username = data[:name]
    @password = data[:password]
  end

end
