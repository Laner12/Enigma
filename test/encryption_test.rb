require "minitest/autorun"
require "minitest/pride"
require "./lib/encryption"
require "./lib/key_generator"
require "./lib/offset_generator"
require "pry"

class EncryptionTest < MiniTest::Test
# combines the key/offsets to create rotation
# has an input
# has an output
# rotates correctly
# standardizes inputs before encrypting
#do I need a prompt to enter the input
# does the input have elements
# does the input get coded 4 elements at a time
  def test_it_has_an_input
    skip
    Encryption.new(input)

    assert_equal false, input = nil
  end

  def test_the_inputs_is_downcase
    e = Encryption.new("INPUT")

    assert_equal "inputs", e.input
  end

  def test_the_character_map_is_equal
    # e = Encryption.new

    assert_equal ["a", "b", "c", "d",
       "e", "f", "g", "h","i", "j", "k", "l", "m",
       "n", "o", "p", "q", "r","s", "t", "u", "v",
        "w", "x","y", "z", "0", "1","2", "3", "4",
         "5", "6", "7", "8", "9", " ", ".", ","], CHARACTER_MAP
  end
end
