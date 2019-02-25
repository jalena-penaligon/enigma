require './test/test_helper'

input = ARGV
encrypted_file = File.open(input[0], "r")
encryption = encrypted_file.read
