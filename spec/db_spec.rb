require 'spec_helper'
require 'pry'

describe 'RPS::DB / Users' do
   before(:each) do

    @db = RPS::DB.new

    @this = @db.create_user({:password => 'winning'})
    @that = @db.create_user({:password => 'losing'})
    @those = @db.create_user({:password => 'observing'})
  end

  it 'exists' do
    expect(RPS::DB).to be_a(Class)
  end

  it 'creates a user with a unique id' do
    expect(@this.id).to eq(1)
    expect(@that.id).to eq(2)
    expect(@those.id).to eq(3)
  end

  it 'creates a user with a password' do
    expect(@this.password).to eq('winning')
    expect(@that.password).to eq('losing')
    expect(@those.password).to eq('observing')
  end
end

describe 'RPS::DB / Games' do
   before(:each) do
    @db = RPS::DB.new
    @this = @db.create_user({:password => 'winning'})
    @that = @db.create_user({:password => 'losing'})
    @game = @db.create_game({:p1_id => 1, :p2_id => 2})
  end

  it 'creates a game with a unique id' do
    expect(@game.id).to eq(1)
  end
end

describe 'RPS::DB / Rounds' do
   before(:each) do

    @db = RPS::DB.new
    @game = @db.create_game({:p1_id => 1, :p2_id => 2})
    @round = @db.create_round({:game_id => 1, :p1_move => 'rock', :p2_move => 'paper'})
  end

  it 'creates a round with a unique id' do
    expect(@round.id).to eq(1)
  end

  it 'creates a round with a game id' do
    expect(@round.game_id).to eq(1)
  end

  it 'creates a round with player moves' do
    expect(@round.p1_move).to eq('rock')
    expect(@round.p2_move).to eq('paper')
  end

  it 'creates a round without setting winner' do
    expect(@round.winner).to eq(nil)
  end
end
