require './test/test_helper'

class ShiftTest < Minitest::Test

  def test_split_key_into_array
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_equal [8, 83, 30, 04], encryption.key_values
  end

  def test_find_offsets_from_date
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_equal [6, 3, 2, 4], encryption.offset_values
  end

  def test_zip_keys_and_offsets
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_equal [[8, 6], [83, 3], [30, 2], [4, 4]], encryption.combine
  end

  def test_sum_keys_and_offsets
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_equal [14, 86, 32, 8], encryption.shift_values
  end
end
