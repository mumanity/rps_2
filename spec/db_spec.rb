require 'spec_helper'
require 'pry'

describe 'RPS::DB' do
   before(:each) do

    @db = RPS::DB.new

    @this = @db.create_user({:password => 'winning'})
    @that = @db.create_user({:password => 'losing'})
    @those = @db.create_user({:password => 'observing'})
  end

  it 'exitst' do
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
