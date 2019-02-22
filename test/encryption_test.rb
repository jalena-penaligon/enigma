require './test/test_helper'

class EncryptionTest < Minitest::Test

  def test_it_exists
    encryption = Encryption.new("hello world end", )

    assert_instance_of Encryption, encryption
  end

  def test_it_has_a_message
    encryption = Encryption.new("hello world end")

    assert_equal "hello world end", encryption.message
  end

  def test_encrypt_returns_a_string
    encryption = Encryption.run("hello world end")

    assert_equal String, encryption.class
  end
end
