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

end
