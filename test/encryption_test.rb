require './test/test_helper'

class EncryptionTest < Minitest::Test

  def test_it_exists
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_instance_of Encryption, encryption
  end

  def test_it_has_a_message
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_equal "hello world end", encryption.message
  end

  def test_it_has_a_key
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_equal "08304", encryption.key
  end

  def test_it_has_a_date
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_equal "291018", encryption.date
  end

  def test_encrypt_returns_a_string
    encryption = Encryption.run("hello world end", "08304", "291018")

    assert_equal String, encryption.class
  end

  def test_message_can_be_shifted
    encryption = Encryption.run("hello world end", "08304", "291018")

    assert_equal "vjqtbeaweqihssi", encryption.shift_message
  end
end
