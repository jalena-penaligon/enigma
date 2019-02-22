require_relative './date'

class Enigma
  include Date

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
