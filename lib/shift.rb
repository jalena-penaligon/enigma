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

end
