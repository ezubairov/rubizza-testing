class Adder
  def self.add_two(number)
    raise TypeError unless !number.is_a?(String) || number =~ /^\d$/
    number = number.to_i unless number.nil?
    number + 2
  end
end
