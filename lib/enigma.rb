require './lib/date'

class Enigma
  include TodaysDate

  def initialize
  end

  def encrypt(message, key = nil, date = nil)
    key = create_key if key == nil
    date = todays_date if date == nil
    encryption = Encryption.run(message, key, date)
    {
      encryption: encryption,
      key: key,
      date: date
    }
  end

  def create_key
    rand.to_s[2..6]
  end

end
