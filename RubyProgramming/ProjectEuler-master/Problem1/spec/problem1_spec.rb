require 'rspec'
require_relative '../problem1'


describe "Problem1" do
  let(:problem1) { Problem1.new }
  
  it "checks numbers not divisible by 3 or 5" do
    problem1 == 1
    problem1 == 2
    problem1 == 4
    problem1 == 7
    problem1 == 8 
  end
  
  it "checks numbers divisible by 3" do
    problem1 == '3 is divisible by 3'
    problem1 == '6 is divisible by 3'
    problem1 == '9 is divisible by 3'
    
  end
  
  it "checks numbers divisible by 5" do
    problem1 == '5 is divisible by 5'
  end
  
#  it "checks to make sure we stopped before 10" do
#    problem1 should be < 10
#  end    
  it "checks to see if sum is correct" do
    problem1 == 23
  end  
  
end
