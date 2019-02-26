require './lib/create'
require './lib/encryption'
require './lib/decryption'

class Enigma
  include Create

  def encrypt(message, key = create_key, date = todays_date)
    encryption = Encryption.run(message, key, date)
    {
      encryption: encryption,
      key: key,
      date: date
    }
  end

  def decrypt(message, key = create_key, date = todays_date)
    decryption = Decryption.run(message, key, date)
    {
      decryption: decryption,
      key: key,
      date: date
    }
  end

end
