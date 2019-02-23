module Shift

  def key_values
    keys = @key.split(//)
    a_key = keys[0] + keys[1]
    b_key = keys[1] + keys[2]
    c_key = keys[2] + keys[3]
    d_key = keys[3] + keys[4]
    [a_key, b_key, c_key, d_key]
  end

end
