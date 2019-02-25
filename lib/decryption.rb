class Decryption
  include Shift
  
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

  def find_letter_and_index
    split_message = @message.split(//).to_enum
    message_and_index = []
    split_message.with_index { |letter,index| message_and_index << [letter, index] }
    message_and_index
  end

end
