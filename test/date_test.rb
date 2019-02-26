require './test/test_helper'

class DateTest < Minitest::Test

  def test_you_can_create_todays_date
    enigma = Enigma.new

    assert_equal 10, enigma.create_date.length
  end

  def test_you_can_split_todays_date
    enigma = Enigma.new
    date = enigma.create_date

    assert_equal 3, enigma.date_split(date).length
  end

  def test_year_is_last_2_characters
    enigma = Enigma.new
    date = enigma.create_date
    date = enigma.date_split(date)

    assert_equal 4, date[0].length
    assert_equal 2, enigma.date_slice(date)[0].length
  end

  def test_date_prints_DDMMYY
    enigma = Enigma.new

    assert_equal 6, enigma.todays_date.length
  end

end
