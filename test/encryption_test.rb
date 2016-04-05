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
    skip
    e = Encryption.new("INPUT")

    assert_equal "inputs", e.input
  end

  def test_that_chars_is_called_on_the_input
    skip
    e = Encryption.new("INPUT")

    assert_equal e.chars, e.chars
  end

  def test_the_character_map_is_equal
    skip
    e = Encryption.new

    assert_equal ["a", "b", "c", "d",
       "e", "f", "g", "h","i", "j", "k", "l", "m",
       "n", "o", "p", "q", "r","s", "t", "u", "v",
        "w", "x","y", "z", "0", "1","2", "3", "4",
         "5", "6", "7", "8", "9", " ", ".", ","] == e.character_map
  end
# may need some work to get running
  def test_encryptor_can_call_offsets
    skip
    a = KeyGenerator.new
    e = Encryption.new

    # assert_equal a.key_a, e.@offset.key_a
  end

  def test_the_input_is_not_output
    skip

  end
end
