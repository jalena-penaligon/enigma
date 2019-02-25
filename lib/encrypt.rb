require './lib/enigma'
require './lib/encryption'

ARGV == ["lib/message.txt", "lib/encrypted.txt"]

file = File.open('lib/message.txt', "r")
message = file.read
enigma = Enigma.new
enigma.encrypt(message)

# cat lib/message.txt

# ruby ./lib/encrypt.rb message.txt encrypted.txt
# Created 'encrypted.txt' with the key 82648 and date 240818
