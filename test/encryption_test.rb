require "minitest/autorun"
require "minitest/pride"
require "./lib/encryption"
require "./lib/key_generator"
require "./lib/offset_generator"
require "pry"

class EncryptionTest < MiniTest::Test

  def test_it_has_an_input
    e = Encryption.new("input")

    assert_equal ["i", "n", "p", "u", "t"], e.input
  end

  def test_the_inputs_is_downcase
    e = Encryption.new("INPUT")

    assert_equal ["i", "n", "p", "u", "t"], e.input
  end

  def test_input_called_method_chars
    e = Encryption.new ("Input")

    assert_equal ["i", "n", "p", "u", "t"], e.input
  end

  def test_output_class
    e = Encryption.new("INPUT")

    assert_equal Array, e.input.class
  end

  def test_the_class_of_the_output
    e = Encryption.new("input")

    assert_equal String, e.output.class
  end

  def test_the_input_works_with_numbers
    e = Encryption.new("1234567")

    assert_equal String, e.output.class
  end

  def test_the_output_and_input_can_handle_mixed
    e = Encryption.new("4556JJHHljlkj")

    assert_equal String, e.output.class
  end
end
