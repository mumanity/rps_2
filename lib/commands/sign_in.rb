require_relative '../rps.rb'

class RPS::SignIn

  def run(data)
    # db = RPS::DB.new
    # binding.pry
    user = RPS.db.get_user(data[:id])

    if user.password == data[:password]
      return {:success? => true, :message => 'login successful!'}
    else
      return {:success? => false, :message => 'incorrect password'}
    end
  end

end
