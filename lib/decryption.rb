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
    decryption.message = decryption.shift_message
  end

  def shift_message
    alphabet = ("a".."z").to_a << " "
    rotate_values = assign_letter_shift
    message = []
    rotate_values.each do |letter_and_index|
      rotate_by = letter_and_index[0] - letter_and_index[1]
      message << alphabet.rotate(rotate_by).first
    end
    message.join("")
  end

end
