require './test/test_helper'

class ShiftTest < Minitest::Test

  def test_split_key_into_array
    encryption = Encryption.new("hello world end", "08304", "291018")

    assert_equal ["08", "83", "30", "04"], encryption.key_values
  end

end
