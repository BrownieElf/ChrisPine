require 'rspec'
require_relative '../new_roman'

describe "generate roman numeral" do
  let(:roman) { NewRoman.new }
  
  it "does not work" do
    roman.generator(4000).should == 'error'
  end
  
  it "handles less than 4" do
    roman.generator(1).should == 'I'
    roman.generator(3).should == 'III'
  end
  
  it "handles '4'" do
    roman.generator(4).should == 'IV'
  end
  
  it "handles 5 thru 8" do
    roman.generator(5).should == 'V'
    roman.generator(8).should == 'VIII'
  end
  
  it "prints '8'" do 
    puts roman.generator(8)
  end
  
  it "prints the first 8 values" do
    (1..8).each do |num|
      puts roman.generator(num)
    end
  end
  
  context 'defining examples dynamically - everybody knows that :)' do
  		{4 => 'IV', 9 => 'IX', 41 => 'XLI'}.each do |input, output|
  			it "#{input} should be equal to #{output}" do
  				roman.generator(input).should == output
  			  end
  		  end
  	  end

  it "handles '10'" do
    roman.generator(10).should == 'X'
  end
  
  it "handles 11 thru 39" do
    roman.generator(11).should == 'XI'
    roman.generator(14).should == 'XIV'
    roman.generator(19).should == 'XIX'
    roman.generator(24).should == 'XXIV'
    roman.generator(29).should == 'XXIX'
    roman.generator(34).should == 'XXXIV'
    roman.generator(39).should == 'XXXIX'
  end
  
  it "handles '40'" do
    roman.generator(40).should == 'XL'
  end
  
  it "handles 41, 44, and 49" do
    roman.generator(41).should == 'XLI'
    roman.generator(44).should == 'XLIV'
    roman.generator(49).should == 'XLIX'
  end
  
  it "handles '50'" do
    roman.generator(50).should == 'L'
  end
  
  it "handles 51, 54, 59, 60, 80, 84, 89" do
    roman.generator(51).should == 'LI'
    roman.generator(54).should == 'LIV'
    roman.generator(59).should == 'LIX'
    roman.generator(60).should == 'LX'
    roman.generator(80).should == 'LXXX'
    roman.generator(84).should == 'LXXXIV'
    roman.generator(89).should == 'LXXXIX' 
  end
  
  it "handles '90'" do
    roman.generator(90).should == 'XC'
  end
  
  it "handles 91, 94, and 99" do
    roman.generator(91).should == 'XCI'
    roman.generator(94).should == 'XCIV'
    roman.generator(99).should == 'XCIX'
  end
  
  it "handles '100'" do
    roman.generator(100).should == 'C'
  end
  
  it "handles 101, 140, 190, 199, and 399" do
    roman.generator(101).should == 'CI'
    roman.generator(140).should == 'CXL'
    roman.generator(190).should == 'CXC'
    roman.generator(199).should == 'CXCIX'
    roman.generator(399).should == 'CCCXCIX'
  end
  
  it "handles 400" do 
    roman.generator(400).should == 'CD'
  end
  
  it "handles 401, 440, 490, and 499" do
    roman.generator(401).should == 'CDI'
    roman.generator(440).should == 'CDXL'
    roman.generator(490).should == 'CDXC'
    roman.generator(499).should == 'CDXCIX'
  end
  
  it "handles 500" do
    roman.generator(500).should == 'D'
  end
  
  it "handles 501, 540, 590, 599, and 899" do
    roman.generator(501).should == 'DI'
    roman.generator(540).should == 'DXL'
    roman.generator(590).should == 'DXC'
    roman.generator(599).should == 'DXCIX'
    roman.generator(899).should == 'DCCCXCIX'
  end
  
  it "handles 900" do
    roman.generator(900).should == 'CM'    
  end
  
  it "handles 901, 940, 990, and 999" do
    roman.generator(901).should == 'CMI'
    roman.generator(940).should == 'CMXL'
    roman.generator(990).should == 'CMXC'
    roman.generator(999).should == 'CMXCIX'
  end
  
  it "handles 1000" do
    roman.generator(1000).should == 'M'
  end
  
  it "handles 1001, 1040, 1090, and 1099" do
    roman.generator(1001).should == 'MI'
    roman.generator(1040).should == 'MXL'
    roman.generator(1090).should == 'MXC'
    roman.generator(1099).should == 'MXCIX'
  end
  
  it "handles 3001, 3040, 3090, and 3099" do
    roman.generator(3001).should == 'MMMI'
    roman.generator(3040).should == 'MMMXL'
    roman.generator(3090).should == 'MMMXC'
    roman.generator(3099).should == 'MMMXCIX'
  end
  
  it "handles 3901, 3940, 3990, and 3999" do
    roman.generator(3901).should == 'MMMCMI'
    roman.generator(3940).should == 'MMMCMXL'
    roman.generator(3990).should == 'MMMCMXC'
    roman.generator(3999).should == 'MMMCMXCIX'
  end
  
end



