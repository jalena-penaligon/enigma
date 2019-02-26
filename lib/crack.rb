class Crack
  include Shift
  attr_reader :message, :date

  def initialize(message, date)
    @message = message
    @date = date
  end

  def order_keys
    keys = assign_shift_index[-4..-1]
    keys.sort_by do |key_and_index|
      key_and_index[1]
    end
  end

  def reverse_letter_shift
    alphabet = ("a".."z").to_a << " "
    letter_shift = order_keys
    letter_shift.each do |letter_and_index|
      letter_and_index[0] = alphabet.index(letter_and_index[0])
    end
    letter_shift
  end

end
