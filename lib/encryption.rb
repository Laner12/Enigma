require "./lib/key_generator"
require "pry"


class Encryption
  CHARACTER_MAP = ("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]

  def initialize(input)
    @offset = KeyGenerator.new
    @input = input.downcase.chars
    @a_offset = rotate_a
    @b_offset = rotate_b
    @c_offset = rotate_c
    @d_offset = rotate_d
    @output
  end

  def rotate_a
    rotated = CHARACTER_MAP.rotate(@offset.key_a)
    a_offset = CHARACTER_MAP.zip(rotated).to_h
  end

  def rotate_b
    rotated = CHARACTER_MAP.rotate(@offset.key_b)
    b_offset = CHARACTER_MAP.zip(rotated).to_h
  end

  def rotate_c
    rotated = CHARACTER_MAP.rotate(@offset.key_c)
    c_offset = CHARACTER_MAP.zip(rotated).to_h
  end

  def rotate_d
    rotated = CHARACTER_MAP.rotate(@offset.key_d)
    d_offset = CHARACTER_MAP.zip(rotated).to_h
  end

  def output
    index = 0
    @output = ""

    while index < @input.size
      @output += @a_offset[@input[index]] if index < @input.size
      @output += @b_offset[@input[index + 1]] if index < @input.size
      @output += @c_offset[@input[index + 2]] if index < @input.size
      @output += @d_offset[@input[index + 3]] if index < @input.size
      index += 4
    end
    @output
  end
end

e = Encryption.new("hiiiiiiiiiii")

p e.output
