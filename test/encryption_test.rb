require './test/test_helper'

class EncryptionTest < Minitest::Test

  def test_it_exists
    encryption = Encryption.new("hello world end")

    assert_instance_of Encryption, encryption
  end

  def test_it_has_a_message
    encryption = Encryption.new("hello world end")

    assert_equal "hello world end", encryption.message
  end

  def test_encrypted_starts_as_an_empty_string
    encryption = Encryption.new("hello world end")

    assert_equal " ", encryption.encrypted
  end

end
