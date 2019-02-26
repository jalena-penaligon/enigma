require './test/test_helper'

input = ARGV
encrypted_file = File.open(input[0], "r")
encryption = encrypted_file.read
enigma = Enigma.new
decrypted = enigma.decrypt(encryption, input[2], input[3])

decrypted_file = File.open(input[1], "w")
decrypted_file.write(decrypted[:decryption])
decrypted_file.close
