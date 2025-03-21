#!/usr/bin/env ruby

def stock_picker(stock_prices)
  high_numbers = {}
  low_numbers = {}

  high = stock_prices[1]
  low = stock_prices[0]
  length = stock_prices.length

  buy = sell = 0

  profit = 0

  stock_prices.reverse.each_with_index do |price, index|
    if price > high
      high = price
      low = price
      high_numbers[length - index - 1] = price
    end

    if price < high and price < low
      low = price
      low_numbers[length - index - 1] = price
    end
  end

  high_numbers.keys.sort.each do |high_key|
    low_numbers.keys.sort.each do |low_key|
      if low_key < high_key
        if (high_numbers[high_key] - low_numbers[low_key]) > profit
          buy = low_key
          sell = high_key
          profit = high_numbers[high_key] - low_numbers[low_key]
        end
      end
    end
  end

  [buy, sell]
end

pp stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # => [1,4] # for a profit of $15 - $3 == $12
pp stock_picker([23, 2, 1, 9, 10, 11, 33, 21, 22]) # => [2, 6] # for a profit of $33 - $1 == $32
pp stock_picker([33, 2, 1, 9, 10, 11, 12, 23, 0]) # => [2, 7] # for a profit of $23 - $1 == $22
