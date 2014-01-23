$:.unshift(File.join(File.dirname(__FILE__), '..','src')) 
require_relative 'pipe_tests'
require 'simplecov'
SimpleCov.start
require 'json'
require 'test/unit'
require 'pipe_revenue'


class PipeRevenueTests < Test::Unit::TestCase
  
  def setup
    @length = 10
    @prices = [1, 2, 2, 4, 4, 5, 6, 6, 7, 8]
    @testing_instance = RecursiveSplit.new
  end
  
  def test_pipe_revenue_canary
    assert true, "Something is wrong in pipe revenue!!!"
  end
  
  include PipeTests
end
















