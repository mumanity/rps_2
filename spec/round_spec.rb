require 'spec_helper'
require 'pry'

describe 'Round' do
   before(:each) do
    @players = RPS::Round.new(0, 1, 'rock', 'paper', 'p2')
  end

  it 'exitst' do
    expect(RPS::Round).to be_a(Class)
  end

  it 'accessors work' do

    expect(@players.id).to eq(0)
    expect(@players.game_id).to eq(1)
    expect(@players.p1_move).to eq('rock')
    expect(@players.p2_move).to eq('paper')
    expect(@players.winner).to eq('p2')
  end

end
