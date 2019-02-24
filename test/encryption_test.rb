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

  def test_assign_index_value_between_1_and_4
    encryption = Encryption.new("hello world end", "08304", "291018")
    expected = [["h", 1], ["e", 2], ["l",3],
                ["l", 4], ["o", 1], [" ", 2],
                ["w", 3], ["o", 4], ["r", 1],
                ["l", 2], ["d", 3], [" ", 4],
                ["e", 1], ["n", 2], ["d", 3]]
    assert_equal expected, encryption.assign_shift_index
  end

  def test_assign_shift_value
    encryption = Encryption.new("hello world end", "08304", "291018")
    expected = [["h", 14], ["e", 86], ["l",32],
                ["l", 8], ["o", 14], [" ", 86],
                ["w", 32], ["o", 8], ["r", 14],
                ["l", 86], ["d", 32], [" ", 8],
                ["e", 14], ["n", 86], ["d", 32]]
    assert_equal expected, encryption.assign_shift_value
  end

  def test_message_can_be_shifted
    skip
    encryption = Encryption.run("hello world end", "08304", "291018")

    assert_equal "vjqtbeaweqihssi", encryption
  end
end
