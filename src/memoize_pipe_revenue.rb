require 'pipe_revenue'

class MemoizedSplit < RecursiveSplit
  
  def initialize
    @max_price = Hash.new
  end
  
  def max_revenue(length: 0, prices: prices)
      unless @max_price.has_key?(length)
        @max_price[length] = super(length: length, prices: prices)
    end
    @max_price[length]
  end
end