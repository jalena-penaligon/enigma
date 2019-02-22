require './test/test_helper'

class DateTest < Minitest::Test

  def test_you_can_create_todays_date
    enigma = Enigma.new

    assert_equal "2019-02-22", enigma.create_date
  end

  def test_you_can_split_todays_date
    enigma = Enigma.new

    assert_equal ["2019", "02", "22"], enigma.date_split
  end

  def test_year_is_last_2_characters
    enigma = Enigma.new

    assert_equal ["19", "02", "22"], enigma.date_slice
  end

  def test_year_is_last_2_characters
    enigma = Enigma.new

    assert_equal ["19", "02", "22"], enigma.date_slice
  end

  def test_date_prints_DDMMYY
    enigma = Enigma.new

    assert_equal "220219", enigma.todays_date
  end
  
end
