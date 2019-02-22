class Encryption
  attr_reader :message, :encrypted

  def initialize(message)
    @message = message
    @encrypted = " "
  end

end
