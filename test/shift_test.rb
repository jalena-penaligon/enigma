require './test/test_helper'

class ShiftTest < Minitest::Test

  def test_split_key_into_array
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_equal ["08", "83", "30", "04"], encryption.key_values
  end

  def test_find_offsets_from_date
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_equal ["6", "3", "2", "4"], encryption.offset_values
  end
end
