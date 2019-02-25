module Shift

  def key_values
    keys = @key.split(//)
    a_key = keys[0] + keys[1]
    b_key = keys[1] + keys[2]
    c_key = keys[2] + keys[3]
    d_key = keys[3] + keys[4]
    [a_key.to_i, b_key.to_i, c_key.to_i, d_key.to_i]
  end

  def offset_values
    squared = (@date.to_i ** 2).to_s
    last_four = squared.split(//).last(4)
    last_four.map do |num|
      num.to_i
    end
  end

  def combine
    key_values.zip(offset_values)
  end

  def shift_values
    keys_and_offsets = combine
    keys_and_offsets.map do |values|
      values[0] + values[1]
    end
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

end
