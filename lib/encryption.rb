class Encryption
  attr_reader :message, :encrypted

  def initialize(message)
    @message = message
  end

  def self.run(message)
    encryption = Encryption.new(message)
    encryption.message
  end

end
