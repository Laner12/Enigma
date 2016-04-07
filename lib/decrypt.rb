require "./lib/encrypt"
require "pry"

class Decrypt
  CHARACTER_MAP = ["a", "b", "c", "d", "e", "f", "g", "h", "i",
                    "j", "k", "l", "m", "n", "o", "p", "q", "r", "s",
                    "t", "u", "v", "w", "x", "y", "z", "0", "1", "2",
                    "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]
  attr_reader :input, :output

  def initialize(input, key)
    @key = key.to_s
    @input = input.to_s.downcase.chars
    @offset_a = rotate_a
    @offset_b = rotate_b
    @offset_c = rotate_c
    @offset_d = rotate_d
    @output
  end

  def rotate_a
    rotated = CHARACTER_MAP.rotate(@key[0..1].to_i)
    a_offset = rotated.zip(CHARACTER_MAP).to_h
  end

  def rotate_b
    rotated = CHARACTER_MAP.rotate(@key[2..3].to_i)
    b_offset = rotated.zip(CHARACTER_MAP).to_h
  end

  def rotate_c
    rotated = CHARACTER_MAP.rotate(@key[4..5].to_i)
    c_offset = rotated.zip(CHARACTER_MAP).to_h
  end

  def rotate_d
    rotated = CHARACTER_MAP.rotate(@key[6..-1].to_i)
    d_offset = rotated.zip(CHARACTER_MAP).to_h
  end

  def output
    index = 0
    @output = ""
    while index < @input.size
      @output << @offset_a[@input[index]] if index < @input.size
      @output << @offset_b[@input[index + 1]] if index + 1 < @input.size
      @output << @offset_c[@input[index + 2]] if index + 2 < @input.size
      @output << @offset_d[@input[index + 3]] if index + 3 < @input.size
        index += 4
    end
     @output
  end
end
