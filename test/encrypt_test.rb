require "minitest/autorun"
require "minitest/pride"
require "./lib/encrypt"
require "./lib/key_generator"
require "pry"

class EncryptTest < MiniTest::Test

  def test_it_has_an_input
    e = Encrypt.new("input")

    assert_equal ["i", "n", "p", "u", "t"], e.input
  end

  def test_the_inputs_is_downcase
    e = Encrypt.new("INPUT")

    assert_equal ["i", "n", "p", "u", "t"], e.input
  end

  def test_input_called_method_chars
    e = Encrypt.new ("Input")

    assert_equal ["i", "n", "p", "u", "t"], e.input
  end

  def test_output_class
    e = Encrypt.new("INPUT")

    assert_equal Array, e.input.class
  end

  def test_the_class_of_the_output
    e = Encrypt.new("input")

    assert_equal String, e.output.class
  end

  def test_the_input_works_with_numbers
    e = Encrypt.new("1234567")

    assert_equal String, e.output.class
  end

  def test_the_output_and_input_can_handle_mixed
    e = Encrypt.new("4556JJHHljlkj")

    assert_equal String, e.output.class
  end

end
