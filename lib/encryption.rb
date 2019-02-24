require './lib/shift'

class Encryption
  include Shift

  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def self.run(message, key, date)
    encryption = Encryption.new(message, key, date)
    encryption.shift_message
    encryption.message
  end

  def find_letter_and_index
    split_message = @message.split(//).to_enum
    message_and_index = []
    split_message.with_index { |letter,index| message_and_index << [letter, index += 1] }
    message_and_index
  end

  def shift_message
    alphabet = ("a".."z").to_a << " "

    shift_by = shift_values

    # binding.pry
  end

end
