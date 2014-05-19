require 'spec_helper'
require 'pry'

describe 'Round' do
   before(:each) do
    @players = RPS::Round.new('player1', 'player2', 'move1', 'move2', 'winner', 1)
  end

  it 'exitst' do
    expect(RPS::Round).to be_a(Class)
  end

  it 'accessors work' do

    expect(@players.player1).to eq('player1')
    expect(@players.player2).to eq('player2')
    expect(@players.move1).to eq('move1')
    expect(@players.move2).to eq('move2')
    expect(@players.winner).to eq('winner')
    expect(@players.round_id).to eq(1)
  end

end
