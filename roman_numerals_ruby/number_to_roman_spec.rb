require "rspec"

def number_to_roman(num) # int num, this method returns a string
  decimal_nums = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  roman_nums = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
  roman = ""
  num = num.to_i
  len = decimal_nums.length()

  len.times do |i|
    while num >= decimal_nums[i]
      num -= decimal_nums[i]
      roman += roman_nums[i]
    end
  end
  return roman
end

puts number_to_roman(11)

describe "number_to_roman" do
  it "turns 1 into I" do
    expect(number_to_roman(1)).to eq "I"
  end

  it "turns 5 into V" do
    expect(number_to_roman(5)).to eq "V"
  end

  it "turns 10 into X" do
    expect(number_to_roman(10)).to eq "X"
  end

  it "turns 9 into IX" do
    expect(number_to_roman(9)).to eq "IX"
  end

  it "turns 1001 into MI" do
    expect(number_to_roman(1001)).to eq "MI"
  end
  it "turns 44 into XLIV" do
    expect(number_to_roman(44)).to eq "XLIV"
  end
end
