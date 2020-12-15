# frozen_string_literal: true

def stock_picker(price_arr)
  best_days = [0, 0]

  price_arr.each_with_index do |buy_price, buy_index|
    next_day = buy_index + 1

    # iterate over the upcoming days to compare to current day
    price_arr[next_day..-1].each_with_index do |sell_price, new_index|
      sell_index = new_index + next_day
      if (sell_price - buy_price) > (price_arr[best_days[1]] - price_arr[best_days[0]])
        best_days[1] = sell_index
        best_days[0] = buy_index
      end
    end
  end

  best_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
