#!/usr/bin/env ruby

def caesar_cipher(string, rshift)

  capital_letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  lowercase_letters = "abcdefghijklmnopqrstuvwxyz"

  encoded_string = ""

  string.each_byte do |c|
    case c
    when 65..90
      encoded_string << capital_letters[(c - 65 + rshift) % 26]
    when 97..122
      encoded_string << lowercase_letters[(c - 97 + rshift) % 26]
    else
      encoded_string << c.chr
    end
  end

  encoded_string
end

puts caesar_cipher("What a string!", 5)
