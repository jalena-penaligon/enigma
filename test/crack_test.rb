require './test/test_helper'

class CrackTest < Minitest::Test

  def test_it_exists
    crack = Crack.new("vjqtbeaweqihssi", 291018)

    assert_instance_of Crack, crack
  end

  def test_it_has_a_message
    crack = Crack.new("vjqtbeaweqihssi", 291018)

    assert_equal "vjqtbeaweqihssi", crack.message
  end

  def test_it_has_a_date
    crack = Crack.new("vjqtbeaweqihssi", 291018)

    assert_equal 291018, crack.date
  end

  def test_split_message_and_assign_index
    crack = Crack.new("vjqtbeaweqihssi", 291018)
    expected = [["v", 0], ["j", 1], ["q",2],
                ["t", 3], ["b", 4], ["e", 5],
                ["a", 6], ["w", 7], ["e", 8],
                ["q", 9], ["i", 10], ["h", 11],
                ["s", 12], ["s", 13], ["i", 14]]
    assert_equal expected, crack.find_letter_and_index
  end

  def test_assign_shift_index
    crack = Crack.new("vjqtbeaweqihssi", 291018)
    expected = [["v", 0], ["j", 1], ["q",2],
                ["t", 3], ["b", 0], ["e", 1],
                ["a", 2], ["w", 3], ["e", 0],
                ["q", 1], ["i", 2], ["h", 3],
                ["s", 0], ["s", 1], ["i", 2]]
    assert_equal expected, crack.assign_shift_index
  end

  def test_find_a_letter
    skip
    crack = Crack.new("vjqtbeaweqihssi", 291018)

    assert_equal "s", crack.a_key
  end

  def test_find_b_letter
    skip
    crack = Crack.new("vjqtbeaweqihssi", 291018)

    assert_equal "s", crack.a_key
  end

  def test_find_c_letter
    skip
    crack = Crack.new("vjqtbeaweqihssi", 291018)

    assert_equal "i", crack.a_key
  end

  def test_find_d_letter
    skip
    crack = Crack.new("vjqtbeaweqihssi", 291018)

    assert_equal "h", crack.a_key
  end
end
