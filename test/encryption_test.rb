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

  def test_print_message_letters_and_index
    encryption = Encryption.new("hello world end", "08304", "291018")
    expected = [["h", 0], ["e", 1], ["l",2],
                ["l", 3], ["o", 4], [" ", 5],
                ["w", 6], ["o", 7], ["r", 8],
                ["l", 9], ["d", 10], [" ", 11],
                ["e", 12], ["n", 13], ["d", 14]]
    assert_equal expected, encryption.find_letter_and_index
  end

  def test_assign_index_value_between_0_and_3
    encryption = Encryption.new("hello world end", "08304", "291018")
    expected = [["h", 0], ["e", 1], ["l",2],
                ["l", 3], ["o", 0], [" ", 1],
                ["w", 2], ["o", 3], ["r", 0],
                ["l", 1], ["d", 2], [" ", 3],
                ["e", 0], ["n", 1], ["d", 2]]
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

  def test_find_letter_shift_value
    encryption = Encryption.new("hello world end", "08304", "291018")
    expected = [[7, 14], [4, 86], [11,32],
                [11, 8], [14, 14], [26, 86],
                [22, 32], [14, 8], [17, 14],
                [11, 86], [3, 32], [26, 8],
                [4, 14], [13, 86], [3, 32]]
    assert_equal expected, encryption.assign_letter_shift
  end

  def test_message_can_be_shifted
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_equal "vjqtbeaweqihssi", encryption.shift_message
  end

  def test_run_combines_all_steps
    encryption = Encryption.run("hello world end", "08304", "291018")

    assert_equal "vjqtbeaweqihssi", encryption
  end
end
