require './lib/shift'

class Encryption
  include Shift

  attr_reader :key, :date
  attr_accessor :message

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def self.run(message, key, date)
    encryption = Encryption.new(message, key, date)
    encryption.message = encryption.shift_message
  end

  def shift_message
    alphabet = ("a".."z").to_a << " "
    rotate_values = assign_letter_shift(assign_shift_value)
    message = rotate_values.map do |letter_and_index|
      rotate_by = letter_and_index[0] + letter_and_index[1]
      alphabet.rotate(rotate_by).first
    end
    message.join("")
  end
end
