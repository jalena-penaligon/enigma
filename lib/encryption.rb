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

  def shift_message
    alphabet = ("a".."z").to_a << " "

    shift_by = shift_values

    split_message = @message.split(//).to_enum
    message_and_index = []
    split_message.with_index { |letter,index| message_and_index << [letter, index] }
    binding.pry

    split_message.map do |letter|
      shift_by.map do |shift|
        index = alphabet.index(letter)
        rotate_by = index + shift
        alphabet.rotate(rotate_by).first
      end
    end

    binding.pry
  end

end
