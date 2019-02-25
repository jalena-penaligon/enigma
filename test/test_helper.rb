require 'simplecov'
SimpleCov.start do
  add_filter 'test'
end
require 'rake/testtask'

task :default => :test

task :test do
  Dir.glob('./test/*_test.rb').each { |file| require file}
end

require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require 'pry'

require './lib/enigma'
require './lib/encryption'
require './lib/decryption'
require './lib/date'
require './lib/shift'
