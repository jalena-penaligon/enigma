require './test/test_helper'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_create_key_makes_a_random_key
    enigma = Enigma.new
    key = enigma.create_key

    assert_equal 5, key.length
    assert_equal String, key.class
  end

  def test_message_is_encrypted
    skip
    enigma = Enigma.new

    expected = {
      encryption: "vjqtbeaweqihssi",
      key: "08304",
      date: "291018"
    }
    actual = enigma.encrypt("hello world end", "08304", "291018")

    assert_equal expected, actual
  end

  def test_message_is_decrypted
    skip
    enigma = Enigma.new

    expected =  {
     decryption: "hello world",
     key: "02715",
     date: "040895"
  }
    actual = enigma.decrypt("keder ohulw", "02715", "040895")

    assert_equal expected, actual
  end

  def test_you_can_encrypt_a_message_with_todays_date
    skip
    enigma = Enigma.new
    date = enigma.todays_date
    encrypted = enigma.encrypt("hello world", "02715", date)

    expected =  {
     decryption: "hello world",
     key: "02715",
     date: "210219"
  }
    assert_equal expected, encrypted
  end

  def test_you_can_decrypt_a_message_with_todays_date
    skip
    enigma = Enigma.new
    date = enigma.todays_date

    expected =  {
     decryption: "hello world",
     key: "02715",
     date: "210219"
  }
    actual = enigma.decrypt(encrypted[:encryption], "02715", date)

    assert_equal expected, actual
  end

  def test_you_can_generate_a_random_key
    skip
    enigma = Enigma.new
    date = enigma.todays_date
    key = engima.create_key

    expected =  {
     decryption: "hello world",
     key: key,
     date: "210219"
  }
    actual = enigma.encrypt("hello world", date, key)

    assert_equal expected, actual
  end

end
