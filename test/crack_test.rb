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
    assert_equal expected, crack.split_and_index
  end

  def test_find_a_letter
    skip
    crack = Crack.new("vjqtbeaweqihssi", 291018)

    assert_equal "s", crack.a_key
  end
end
