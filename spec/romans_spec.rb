require './romans'


describe("romans") do 
  it "should return an Arabic number" do
    romanNumerals = File.open('./romanslist.txt','r').readlines
    arabicNumerals = File.open('./arabicslist.txt','r').readlines
    for i in 0..4998
      expect(romans(romanNumerals[i].gsub(/\n/,""),i+1)).to eq(i+1)
    end  
  end  
end

# catering for roman numbers up to 5,000.  Not catering for V with 
# overstrike for larger numbers.