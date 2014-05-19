require 'spec_helper'
require 'pry'

describe 'Round' do
   before(:each) do
    @players = RPS::Round.new({:move! => 'rock', :move2 => 'paper'})
  end

  it 'exitst' do
    expect(RPS::Game).to be_a(Class)
  end

  it '' do

    expect(@players.player1).to eq('')
    expect(@players.player2).to eq('')
  end

  it '' do
    expect(@players.player1_wins).to eq(0)
    expect(@players.player2_wins).to eq(0)
  end

end
