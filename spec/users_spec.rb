require 'spec_helper'
require 'pry'

describe 'DataBase' do
   before(:each) do
    @lady = RPS::Users.new({:name => 'Sheila', :password => 'winning'})
  end

  it 'exitst' do
    expect(RPS::Users).to be_a(Class)
  end

  it 'creates a user with a name' do
    expect(@lady.name).to eq('Sheila')
  end

  it 'creates a user with a password' do
    expect(@lady.password).to eq('winning')
  end
end
