require "./lib/key_generator"
require "pry"


class Encryption
  CHARACTER_MAP = ("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]
  # CHARACTER_MAP = ["a", "b", "c", "d", "e", "f", "g", "h",
  #   "i", "j", "k", "l", "m", "n", "o", "p", "q", "r",
  #   "s", "t", "u", "v", "w", "x","y", "z", "0", "1",
  #   "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]

  def initialize(input)
    @offset = KeyGenerator.new
    @input = input.downcase.chars
    @a_offset
    @b_offset
    @c_offset
    @d_offset
  end

  def rotate_a
    rotated = CHARACTER_MAP.rotate(@offset.key_a)
    @a_offset = CHARACTER_MAP.zip(rotated).to_h
  end

  def rotate_b
    rotated = CHARACTER_MAP.rotate(@offset.key_b)
    @b_offset = CHARACTER_MAP.zip(rotated).to_h
  end

  def rotate_c
    rotated = CHARACTER_MAP.rotate(@offset.key_c)
    @c_offset = CHARACTER_MAP.zip(rotated).to_h
  end

  def rotate_d
    rotated = CHARACTER_MAP.rotate(@offset.key_d)
    @d_offset = CHARACTER_MAP.zip(rotated).to_h
  end

  def output
    index = 0
    output = ""
    while index < @input.size
      output += @a_offset[@input[index]] if index < @input.size
      output += @b_offset[@input[index + 1]] if index < @input.size
      output += @c_offset[@input[index + 2]] if index < @input.size
      output += @d_offset[@input[index + 3]] if index < @input.size
      index += 4
    end
    output
  end
end
