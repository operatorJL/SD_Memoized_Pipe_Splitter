class RecursiveSplit  
  def max_revenue(length: 0, prices: prices) 
    max_price = prices[length - 1]
    (1...length).each do |size|
      max_price = [max_price, max_revenue(length: size, prices: prices) +
                    max_revenue(length: length - size, prices: prices)].max
    end
    max_price
  end
end