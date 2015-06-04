def stock_picker(prices)

	best_buy = nil
	best_sell = nil
	max_profit = 0

	# loop through the buy days until the 2nd last day
	(0..(prices.length - 2)).each do |buy_date|
		# loop through the sell days drom a given buy day
		((buy_date + 1)..prices.length - 1).each do |sell_date|

			# check the profit
			price_difference = prices[sell_date] - prices[buy_date]

			# if that's the highest profit you have so far, save it
			if price_difference > max_profit
				best_buy = buy_date
				best_sell = sell_date
				max_profit = price_difference
			end
		end
	end

	# print statements
	puts "day #{best_buy}: buy at #{prices[best_buy]}"
	puts "day #{best_sell}: buy at #{prices[best_sell]}"
	puts "profit of #{max_profit}"

	return [best_buy, best_sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])