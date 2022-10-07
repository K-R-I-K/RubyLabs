require 'minitest/autorun'
require './src/Task2'

class Task2Test < Minitest::Test
  def test_task2
    assert_equal(9.0, my_sum(0.5, 17, 0.1){ |x| x})
    assert_equal(18, my_sum(1, 17, 0.1){ |x| 1})
    assert_equal(0.875, my_sum(0.5, 5, 0.1){ |x, i| x/(2.0 ** i)})
  end
end
