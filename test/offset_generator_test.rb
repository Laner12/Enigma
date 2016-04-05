require "minitest/autorun"
require "minitest/pride"
require "./lib/offset_generator"
require "pry"

class OffsetGeneratorTest < MiniTest::Test

  def test_it_can_create_numbers
    numbers = OffsetGenerator.new
# may not work unless the math is correct
    assert_equal 14, numbers.offset_numbers.count
  end

  def test_it_cannot_contain_decimals
    numbers = OffsetGenerator.new

    assert_equal false, numbers.offset_numbers.include?(".")
  end

  def test_it_cannot_be_negative
    numbers = OffsetGenerator.new

    assert_equal false, numbers.offset_numbers.include?("-")
  end

  def test_the_class
    numbers = OffsetGenerator.new

    assert_equal Fixnum, numbers.offset_a.class
  end

  def test_it_has_final_offsets
    numbers = OffsetGenerator.new
    numbers.final_offsets
    assert true
  end
end
