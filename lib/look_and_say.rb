require_relative 'lavish_enumerator'

module LookAndSay
  def read_off_digits
    to_int.abs.to_s.chars.chunk(&:to_i).map{ |number, ary| "#{ary.length}#{number}"}.join.to_i
  end

  def look_and_say
    LavishEnumerator.new do |enum|
      number = self.to_int
      loop do
        enum << number
        number = number.read_off_digits
      end
    end
  end
end
