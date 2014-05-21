require 'spec_helper'
require 'pry'

describe RPS::SignIn do
   before(:each) do
    @db = RPS.db

    @player_1 = @db.create_user({:password => 'gonna winnnnn'})
    @player_2 = @db.create_user({:password => 'halp'})
    # binding.pry
  end

  xit 'exists' do
    expect(RPS::SignIn).to be_a(Class)
  end

  it 'can find a user' do
    # binding.pry
    result = subject.run({:id => 1, :password => 'gonna winnnnn'})

    # binding.pry

    expect(result).to eq('stuff')
    # login successful!
  end

  xit 'returns error if password does not match' do
    expect().to eq()
  end

  xit 'returns success if password matches' do
    expect().to eq()
  end
end
