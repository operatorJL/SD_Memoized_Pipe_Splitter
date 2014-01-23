module PipeTests
  
  def test_get_max_revenue_based_on_length_one
    assert_equal 1, @testing_instance.max_revenue(length: 1, prices: @prices)
  end
  
  def test_get_max_revenue_based_on_length_two
     assert_equal 2, @testing_instance.max_revenue(length: 2, prices: @prices)
  end
   
  def test_get_max_revenue_based_on_length_three
    assert_equal 3, @testing_instance.max_revenue(length: 3, prices: @prices)
  end
   
  def test_get_max_revenue_based_on_length_four
    assert_equal 4, @testing_instance.max_revenue(length: 4, prices: @prices)
  end
   
  def test_get_max_revenue_based_on_length_five
    assert_equal 5, @testing_instance.max_revenue(length: 5, prices: @prices)
  end
   
  def test_get_max_revenue_based_on_length_six
    assert_equal 6, @testing_instance.max_revenue(length: 6, prices: @prices)
  end
   
  def test_get_max_revenue_based_on_length_seven
    assert_equal 7, @testing_instance.max_revenue(length: 7, prices: @prices)
  end
   
  def test_get_max_revenue_based_on_length_eight
    assert_equal 8, @testing_instance.max_revenue(length: 8, prices: @prices)
  end
   
  def test_get_max_revenue_based_on_length_nine
    assert_equal 9, @testing_instance.max_revenue(length: 9, prices: @prices)
  end
   
  def test_get_max_of_max_revenue_based_on_length_ten
    assert_equal 10, @testing_instance.max_revenue(length: @length, prices: @prices)
  end
  
  def test_get_max_of_max_revenue_based_on_length_three
    @prices = [2, 1, 1]
    assert_equal 6, @testing_instance.max_revenue(length: 3, prices: @prices)
  end
  
  def test_get_max_of_max_revenue_based_on_length_four
    @prices = [5, 1, 2, 3]
    assert_equal 20, @testing_instance.max_revenue(length: 4, prices: @prices)
  end
  
  def test_get_max_of_max_revenue_based_on_length_five
    @prices = [3, 5, 1, 2, 1]
    assert_equal 15, @testing_instance.max_revenue(length: 5, prices: @prices)
  end
  
end