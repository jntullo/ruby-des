$:.unshift(File.dirname(__FILE__))
require 'ruby-des'
require 'ruby-des/feistel'
require 'ruby-des/key_schedule'
require 'ruby-des/xor'

def show_encrypted
  # Create plaintext string and keys into bit arrays
  plaintext_string = 'mysecret'
  puts "The plaintext string: #{plaintext_string}"

  string = RubyDES::Block.new(plaintext_string)
  the_key = RubyDES::Block.new('jilliant')

  # Key schedule that will be used for both encryption and decryption
  key_schedule = KeySchedule.new(the_key.bit_array).sub_keys

  encrypted_string = RubyDES::Encrypt.encrypt(string, key_schedule)
  puts "The encrypted string: #{encrypted_string.string}"

  decrypted_string = RubyDES::Encrypt.encrypt(encrypted_string, key_schedule.reverse)
  puts "The decrypted string via encryption with reverse key schedule: #{decrypted_string.string}"
end

show_encrypted

