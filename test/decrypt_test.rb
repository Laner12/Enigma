require "minitest/autorun"
require "minitest/pride"
require "./lib/decrypt"
require "./lib/key_generator"
require "pry"

class DecryptTest < MiniTest::Test

  def test_decryption_takes_input
    d = Decrypt.new(input, key)

    assert_equal
  end

  def method_name

  end
end
