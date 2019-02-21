require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_encrypt_creates_a_hash
    enigma = Enigma.new

    expected = {
      encryption: "vjqtbeaweqihssi",
      key: "08304",
      date: "291018"
    }
    actual = enigma.encrypt("hello world end", "08304", "291018")

    assert_equal expected, actual
  end

  def test_decrypt_creates_a_hash
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
    enigma = Enigma.new
    encrypted = enigma.encrypt("hello world", "02715")

    expected =  {
     decryption: "hello world",
     key: "02715",
     date: "210219"
  }
    assert_equal expected, encrypted
  end

  def test_you_can_decrypt_a_message_with_todays_date
    enigma = Enigma.new

    expected =  {
     decryption: "hello world",
     key: "02715",
     date: "210219"
  }
    actual = enigma.decrypt(encrypted[:encryption], "02715")

    assert_equal expected, actual
  end

  def test_you_can_generate_a_random_key
    enigma = Enigma.new

    expected =  {
     decryption: "hello world",
     key: #random?,
     date: "210219"
  }
    actual = enigma.encrypt("hello world")

    assert_equal expected, actual
  end

end
