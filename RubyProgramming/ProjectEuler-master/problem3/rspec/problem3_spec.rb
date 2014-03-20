require 'rspec'
require_relative '../problem3'

describe "problem 3 largest prime" do
  let(:problem3) { LargestPrime.new }
  
  it "1 is not a prime number" do
    problem3.should_not == 1
  end
  
  
  
end 


#problem3.result(1).should != 1
