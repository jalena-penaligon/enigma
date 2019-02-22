class Encryption
  attr_reader :message, :encrypted

  def initialize(message)
    @message = message
    @encrypted = " "
  end

  def self.encrypt(message)
    encryption = Encryption.new(message)
    encryption.encrypted
  end

end
