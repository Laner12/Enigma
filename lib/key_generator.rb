require "pry"

class KeyGenerator
  attr_reader :key_a, :key_b, :key_c, :key_d

  NUMBERS = [*0..9]

  def initialize
    key = key_numbers
    @key_a = key[0..1].join.to_i
    @key_b = key[1..2].join.to_i
    @key_c = key[2..3].join.to_i
    @key_d = key[3..-1].join.to_i
  end

  def key_numbers
    key_numbers = []
    key_numbers << NUMBERS.sample(5)
    key_numbers.flatten
  end
  

end
KeyGenerator.new
