require './romans'


describe("romans") do 
  it "should return 1" do
    romanNumerals = File.open('./romanslist.txt','r').readlines
    arabicNumerals = File.open('./arabicslist.txt','r').readlines
    for i in 4..4 
      expect(romans(romanNumerals[i].gsub(/\n/,""))).to eq(1)
    end  
  end  
end

# catering for roman numbers up to 5,000.  Not catering for V with 
# overstrike for larger numbers.