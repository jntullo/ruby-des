$:.unshift(File.dirname(__FILE__))

require 'ruby-des/feistel'
require 'ruby-des/key_schedule'

module RubyDES
  IP = [0x3a, 0x32, 0x2a, 0x22, 0x1a, 0x12, 0x0a, 0x02,
        0x3c, 0x34, 0x2c, 0x24, 0x1c, 0x14, 0x0c, 0x04,
        0x3e, 0x36, 0x2e, 0x26, 0x1e, 0x16, 0x0e, 0x06,
        0x40, 0x38, 0x30, 0x28, 0x20, 0x18, 0x10, 0x08,
        0x39, 0x31, 0x29, 0x21, 0x19, 0x11, 0x09, 0x01,
        0x3b, 0x33, 0x2b, 0x23, 0x1b, 0x13, 0x0b, 0x03,
        0x3d, 0x35, 0x2d, 0x25, 0x1d, 0x15, 0x0d, 0x05,
        0x3f, 0x37, 0x2f, 0x27, 0x1f, 0x17, 0x0f, 0x07]
        
  FP = [0x28, 0x08, 0x30, 0x10, 0x38, 0x18, 0x40, 0x20,
        0x27, 0x07, 0x2f, 0x0f, 0x37, 0x17, 0x3f, 0x1f,
        0x26, 0x06, 0x2e, 0x0e, 0x36, 0x16, 0x3e, 0x1e,
        0x25, 0x05, 0x2d, 0x0d, 0x35, 0x15, 0x3d, 0x1d,
        0x24, 0x04, 0x2c, 0x0c, 0x34, 0x14, 0x3c, 0x1c,
        0x23, 0x03, 0x2b, 0x0b, 0x33, 0x13, 0x3b, 0x1b,
        0x22, 0x02, 0x2a, 0x0a, 0x32, 0x12, 0x3a, 0x1a,
        0x21, 0x01, 0x29, 0x09, 0x31, 0x11, 0x39, 0x19]
  
  # The 7-bit binary representation of "ruby-des" with proper parity."
  TEST_KEY = [1, 1, 1, 0, 0, 1, 0, 1,
              1, 1, 1, 0, 1, 0, 1, 0,
              1, 1, 0, 0, 0, 1, 0, 0,
              1, 1, 1, 1, 0, 0, 1, 0,
              0, 1, 0, 1, 1, 0, 1, 1,
              1, 1, 0, 0, 1, 0, 0, 0,
              1, 1, 0, 0, 1, 0, 1, 1,
              1, 1, 1, 0, 0, 1, 1, 0]
  
  class Ctx
    def self.new(block, key)
      
    end
    
    def encrypt
      
    end
    
    def decrypt
      
    end
  end
end