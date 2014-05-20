require 'spec_helper'
require 'pry'

describe 'Games' do
   before(:each) do
    @players = RPS::Games.new({:id => 1, :p1_id => 2, :p2_id => 4})
  end

  it 'exitst' do
    expect(RPS::Games).to be_a(Class)
  end

  it 'has working accessors' do
    expect(@players.id).to eq(1)
    expect(@players.p1_id).to eq(2)
    expect(@players.p2_id).to eq(4)
    expect(@players.winner).to eq(nil)

  end

end
