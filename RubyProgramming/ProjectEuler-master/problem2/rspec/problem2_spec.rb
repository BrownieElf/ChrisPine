require 'rspec'
require_relative '../problem2'


describe "problem2" do
  let(:problem2) { Problem2.new }
  
  it "checks" do
    problem2 == 1
    problem2 == 2
  end  
  
end
