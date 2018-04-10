def trader_du_dimanche (array)

  buy_day = 0
  sell_day = 0
  profit = 0

  array.each_with_index do | price, place|
    for place2 in (place+1)...(array.size) do
      if (array[place2] - price) >= profit
        profit = array[place2] - price
        buy_day = place
        sell_day = place2
      else
        next
      end
    end
  end
p [buy_day, sell_day]
end

array = [17,3,6,9,15,8,6,1,10]
trader_du_dimanche(array)
