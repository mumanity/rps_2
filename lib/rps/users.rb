require 'pry-debugger'
class RPS::Users

  attr_reader :id, :password

  def initialize(data)
    # binding.pry
    @id = data[:id]
    @password = data[:password]
  end

end
