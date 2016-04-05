require "pry"

class KeyGenerator
  attr_reader :key_a, :key_b, :key_c, :key_d
              # :offset_a, :offset_b, :offset_c, :offset_d

  DATE = Time.now.strftime("%d%m%Y").to_i
  NUMBERS = [*0..9]

  def initialize
    key = key_numbers
    @key_a = key[0..1].join.to_i + offset_numbers[-4].to_i
    @key_b = key[1..2].join.to_i + offset_numbers[-3].to_i
    @key_c = key[2..3].join.to_i + offset_numbers[-2].to_i
    @key_d = key[3..-1].join.to_i + offset_numbers[-1].to_i
  end

  def key_numbers
    key_numbers = []
    key_numbers << NUMBERS.sample(5)
    key_numbers.flatten
  end

  def date_squared
    (DATE**2).to_s.split("")
  end

  def offset_numbers
    offset_number = []
    offset_number << date_squared
    offset_number.flatten
  end
end
KeyGenerator.new
