require './lib/enigma'
require './lib/encryption'

input = ARGV
message_file = File.open(input[0], "r")
message = message_file.read.delete!("\n")
enigma = Enigma.new
encrypted = enigma.encrypt(message)

encrypted_file = File.open(input[1], "w")
file = encrypted_file.write(encrypted)

puts "Created '#{input[1]}' with the key #{encrypted[:key]} and date #{encrypted[:date]}"
