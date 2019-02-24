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
    split_message.with_index { |letter,index| message_and_index << [letter, index] }
    message_and_index
  end

  def assign_shift_index
    shift_index = find_letter_and_index
    shift_index.each do |letter_and_index|
      if letter_and_index[1] > 3
        letter_and_index[1] = letter_and_index[1] % 4
      end
    end
  end

  def assign_shift_value
    shift_by = shift_values
    shift_value = assign_shift_index.each do |letter_and_index|
      letter_and_index[1] = shift_by[letter_and_index[1]]
    end
  end

  def assign_letter_shift
    alphabet = ("a".."z").to_a << " "
    letter_shift = assign_shift_value
    letter_shift.each do |letter_and_index|
      letter_and_index[0] = alphabet.index(letter_and_index[0])
    end
    letter_shift
  end

  def shift_message
    alphabet = ("a".."z").to_a << " "
    letter_shift = assign_shift_value
    letter_shift.each do |letter_and_index|
      letter_and_index[0] = alphabet.index(letter_and_index[0])
    end
    letter_shift

  end

end
