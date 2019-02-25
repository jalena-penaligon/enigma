class Decryption
  attr_reader :key, :date
  attr_accessor :message

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def self.run(message, key, date)
    decryption = Decryption.new(message, key, date)
    decryption.message
  end

end
