class Encryption
  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def self.run(message, key, date)
    encryption = Encryption.new(message, key, date)
    encryption.message
  end

end
