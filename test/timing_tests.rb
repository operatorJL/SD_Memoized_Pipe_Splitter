$:.unshift(File.join(File.dirname(__FILE__), '..','src')) 
require 'simplecov'
SimpleCov.start
require 'json'
require 'test/unit'
require 'memoize_pipe_revenue'
require 'pipe_revenue'


class TimingTests < Test::Unit::TestCase
  
  def setup
    @recursive = RecursiveSplit.new
    @memoized = MemoizedSplit.new
  end
  
  def test_timing_canary
    assert true, "timing is not working!"
  end
  
  def test_memoized_method_should_be_faster
    length = 15
    prices = [1, 2, 2, 4, 4, 5, 6, 6, 7, 8, 1, 1, 1, 1, 1]

    start = Time.now
    @recursive.max_revenue(length: length, prices: prices)
    finish = Time.now
    non_memoized = finish - start

    start = Time.now
    @memoized.max_revenue(length: length, prices: prices)
    finish = Time.now
    memoized = finish - start
    
    assert memoized * 10 < non_memoized
    
  end
  
end