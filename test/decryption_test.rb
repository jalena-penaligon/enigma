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

end
