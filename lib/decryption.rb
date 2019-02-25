class Decryption
  attr_reader :key, :date
  attr_accessor :message

def initialize(message, key, date)
  @message = message
  @key = key
  @date = date
end

end
