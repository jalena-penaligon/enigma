require './lib/enigma'
require './lib/encryption'

input = ARGV
message_file = File.open(input[0], "r")
message = message_file.read.delete!("\n")
enigma = Enigma.new
encrypted = enigma.encrypt(message)
