require "Minitest/autorun"
require "Minitest/pride"
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
# encrypts four elements at a time
#do I need a prompt to enter the input
# does the input have elements
  def test_it_has_two_args
    Encryptor.new
  end

  def test_

  end
end
