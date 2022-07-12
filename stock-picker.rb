def stock_picker(array)
    buy_sell = Array.new
    margin = Array.new
    buy = Array.new
    sell =  Array.new

    i = 0

    until i == array.length # use nested loops to figure out every possible profit/loss margin
        reverse = array.length
        until reverse == i + 1 # take the sell price from the buy price until we reach the last possible selling opportunity
            margin.push(array[reverse - 1 ] - array[i]) 
            buy.push(array[i]) # push every buy/sell price we use to a new array
            sell.push(array[reverse - 1 ])
            reverse -= 1
            
        end  
        i += 1
    end

    profit_position = margin.find_index(margin.max)

    p buy_sell.push(array.find_index(buy[profit_position]), array.find_index(sell[profit_position])) # find the numbers used to get the max profit

end

stock_picker([17,3,6,9,15,8,6,1,10])