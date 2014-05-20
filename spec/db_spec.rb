require 'spec_helper'
require 'pry'

describe 'DB' do
   before(:each) do
    @lady = RPS::Users.new({:id => 'Sheila', :password => 'winning'})
  end

  xit 'exitst' do
    expect(RPS::Users).to be_a(Class)
  end

  xit 'creates a user with a id' do
    expect(@lady.id).to eq('Sheila')
  end

  xit 'creates a user with a password' do
    expect(@lady.password).to eq('winning')
  end
end
