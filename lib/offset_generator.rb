require "date"
require "./lib/key_generator"
require "pry"

class OffsetGenerator < KeyGenerator
  attr_reader :offset_a, :offset_b, :offset_c, :offset_d

  DATE = Time.now.strftime("%d%m%Y").to_i

  def initialize
    @offset_a = offset_numbers[-4].to_i
    @offset_b = offset_numbers[-3].to_i
    @offset_c = offset_numbers[-2].to_i
    @offset_d = offset_numbers[-1].to_i
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
    binding.pry


  end
end
OffsetGenerator.new
