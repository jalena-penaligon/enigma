require './lib/date'

class Enigma
  include TodaysDate

  def initialize
  end

  def encrypt(message, key = create_key, date = todays_date)
    encryption = Encryption.run(message, key, date)
    {
      encryption: encryption,
      key: key,
      date: date
    }
  end

  # does this make sense to live here
  # should I use this method as an arg instead?
  # ie: def encrypt(message, key = rand.to_s[2..6], date = todays_date)
  def create_key
    rand.to_s[2..6]
  end

end
