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

  def test_print_message_letters_and_index_plus_1
    encryption = Encryption.new("hello world end", "08304", "291018")
    expected = [["h", 1], ["e", 2], ["l",3],
                ["l", 4], ["o", 5], [" ", 6],
                ["w", 7], ["o", 8], ["r", 9],
                ["l", 10], ["d", 11], [" ", 12],
                ["e", 13], ["n", 14], ["d", 15]]
    assert_equal expected, encryption.find_letter_and_index
  end

  def test_message_can_be_shifted
    skip
    encryption = Encryption.run("hello world end", "08304", "291018")

    assert_equal "vjqtbeaweqihssi", encryption
  end
end
