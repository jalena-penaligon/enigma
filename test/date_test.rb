require './test/test_helper'

class DateTest < Minitest::Test

  def test_you_can_create_todays_date
    enigma = Enigma.new

    assert_equal "2019-02-22", enigma.create_date
  end

  def test_you_can_split_todays_date
    enigma = Enigma.new
    date = enigma.create_date

    assert_equal ["2019", "02", "22"], enigma.date_split(date)
  end

  def test_year_is_last_2_characters
    enigma = Enigma.new
    date = enigma.create_date
    date = enigma.date_split(date)

    assert_equal ["19", "02", "22"], enigma.date_slice(date)
  end

  def test_date_prints_DDMMYY
    enigma = Enigma.new

    assert_equal "220219", enigma.todays_date
  end

end
