require_relative '../lib/look_and_say'

RSpec.describe LookAndSay do
	before(:each){ Integer.include(LookAndSay) }

  it "read off the digits of member, counting the number of digits in groups of the same digit" do
    expect(111221.read_off_digits).to eq(312211)
    expect(22.read_off_digits).to eq(22)
  end

  it "return look-and-say sequence numbers" do
    expect(10.look_and_say.each.take(3)).to eq([10, 1110, 3110, 132110])
    expect(1.look_and_say.each.take(5)).to eq([1, 11, 21, 1211, 111221, 312211])
  end
end