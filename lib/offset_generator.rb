require "date"
require "./lib/key_generator"
require "pry"

class OffsetGenerator
  attr_reader :offset_a, :offset_b, :offset_c, :offset_d

  DATE = Time.now.strftime("%d%m%Y").to_i

  def initialize
    @offset_a = offset_numbers[-4].to_i
    @offset_b = offset_numbers[-3].to_i
    @offset_c = offset_numbers[-2].to_i
    @offset_d = offset_numbers[-1].to_i
    # hashcode key + final value {:a => "a"}
  end

  def date_squared
    (DATE**2).to_s.split("")
  end

  def offset_numbers
    offset_number = []
    offset_number << date_squared
    offset_number.flatten
  end

  def final_offsets
    key = KeyGenerator.new
    a = key.key_a + @offset_a
    b = key.key_b + @offset_b
    c = key.key_c + @offset_c
    d = key.key_d + @offset_d
  end
end
OffsetGenerator.new
