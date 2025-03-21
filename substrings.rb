#!/usr/bin/env ruby

def substrings(word, dictionary)
  words = word.split

  result = Hash.new(0)

  words.each do |word|
    dictionary.each do |item|
      result[item] += 1 if word.match(item)
    end
  end

  result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

pp substrings("below", dictionary) # => { "below" => 1, "low" => 1 }
pp substrings("Howdy partner, sit down! How's it going?", dictionary) # => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
