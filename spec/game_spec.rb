require 'spec_helper'
require 'pry'

describe 'Game' do
   before(:each) do
    @players = RPS::Game.new({:player1 => 'Broseph', :player2 => 'Sheila'})
  end

  it 'exitst' do
    expect(RPS::Game).to be_a(Class)
  end

  it 'creates two player ids' do

    expect(@players.player1).to eq('Broseph')
    expect(@players.player2).to eq('Sheila')
  end

  it 'creates counters for player wins' do
    expect(@players.player1_wins).to eq(0)
    expect(@players.player2_wins).to eq(0)
  end

end
