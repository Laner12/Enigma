require "Minitest/autorun"
require "Minitest/pride"
require "./lib/key_generator"
require "pry"

class KeyGeneratorTest < MiniTest::Test

  def test_it_can_create_numbers
    numbers = KeyGenerator.new

    assert_equal 5, numbers.key_numbers.count
  end

  def test_it_cannot_contain_decimals

    numbers = KeyGenerator.new

    assert_equal false, numbers.key_numbers.include?(".")

  end

  def test_it_cannot_be_negative
    numbers = KeyGenerator.new

    assert_equal false, numbers.key_numbers.include?("-")
  end

  def test_the_class
    numbers = KeyGenerator.new

    assert_equal Fixnum, numbers.key_a.class
  end

  def test_it_should_be_random
    numbers = KeyGenerator.new
    numbers2 = KeyGenerator.new

    assert_equal false, numbers == numbers2
  end
end
