class Enigma

  def initialize
  end

  def encrypt(message, key, date)
    encryption = Encryption.run(message, key, date)
    {
      encryption: encryption,
      key: key,
      date: date
    }
  end

end
