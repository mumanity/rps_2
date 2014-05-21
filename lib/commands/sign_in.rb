require_relative '../rps.rb'

class RPS::SignIn

  def run(input)
    response = RPS::SQLDB.get_user_by_name(data[:id])
    if response[0].last == data[:password]
      return {:success? => true, :message => 'login successful!'}
    else
      return {:success? => false, :message => 'incorrect password'}
    end
  end
end
