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

  def combine_offset
    shift_and_index = assign_letter_shift(order_keys)
    date_offset = offset_values
    shift_and_index.map do |key_and_index|
      key_and_index << date_offset[key_and_index[1]]
    end
  end


end
