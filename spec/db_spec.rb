require 'spec_helper'
require 'pry'

describe 'RPS::DB' do
   before(:each) do

    @db = RPS::DB.new

    @this = @db.create_user({:password => 'winning'})
  end

  it 'exitst' do
    expect(RPS::DB).to be_a(Class)
  end

  xit 'creates a user with a id' do
    expect(@lady.id).to eq('Sheila')
  end

  xit 'creates a user with a password' do
    expect(@lady.password).to eq('winning')
  end
end
