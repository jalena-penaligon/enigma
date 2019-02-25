require './test/test_helper'

class EncryptionTest < Minitest::Test

  def test_it_exists
    decryption = Decryption.new("keder ohulw", "02715", "040895")

    assert_instance_of Decryption, decryption
  end

  def test_it_has_a_message
    decryption = Decryption.new("keder ohulw", "02715", "040895")

    assert_equal "keder ohulw", decryption.message
  end

  def test_it_has_a_key
    decryption = Decryption.new("keder ohulw", "02715", "040895")

    assert_equal "02715", decryption.key
  end

  def test_it_has_a_date
    decryption = Decryption.new("keder ohulw", "02715", "040895")

    assert_equal "040895", decryption.date
  end

  def test_run_returns_a_string
    decryption = Decryption.run("keder ohulw", "02715", "040895")

    assert_equal String, decryption.class
  end

  def test_print_message_letters_and_index
    decryption = Decryption.new("keder ohulw", "02715", "040895")
    expected = [["k", 0], ["e", 1], ["d",2],
                ["e", 3], ["r", 4], [" ", 5],
                ["o", 6], ["h", 7], ["u", 8],
                ["l", 9], ["w", 10]]
    assert_equal expected, decryption.find_letter_and_index
  end

  def test_assign_index_value_between_0_and_3
    decryption = Decryption.new("keder ohulw", "02715", "040895")
    expected = [["k", 0], ["e", 1], ["d",2],
                ["e", 3], ["r", 0], [" ", 1],
                ["o", 2], ["h", 3], ["u", 0],
                ["l", 1], ["w", 2]]
    assert_equal expected, decryption.assign_shift_index
  end

  def test_assign_shift_value
    decryption = Decryption.new("keder ohulw", "02715", "040895")

    expected = [["k", 3], ["e", 27], ["d",73],
                ["e", 20], ["r", 3], [" ", 27],
                ["o", 73], ["h", 20], ["u", 3],
                ["l", 27], ["w", 73]]
    assert_equal expected, decryption.assign_shift_value
  end

  def test_find_letter_shift_value
    decryption = Decryption.new("keder ohulw", "02715", "040895")
    expected = [[10, 3], [4, 27], [3, 73],
                [4, 20], [17, 3], [26, 27],
                [14, 73], [7, 20], [20, 3],
                [11, 27], [22, 73]]
    assert_equal expected, decryption.assign_letter_shift
  end

  def test_message_can_be_shifted
    skip
    decryption = Decryption.new("keder ohulw", "02715", "040895")

    assert_equal "hello world", decryption.shift_message
  end

end
