require 'minitest/autorun'
require './src/Task1'

class Task1Test < Minitest::Test
  def test_task1_rectangular
    assert_equal(4.0, integrate_rectangular(0, 2, 2){ |x| 2})
    assert_equal(2.0, integrate_rectangular(0, 2, 2){ |x| x})
  end

  def test_task1_trapezoidal
    assert_equal(4.0, integrate_trapezoidal(0, 2, 2){ |x| 2})
    assert_equal(2.0, integrate_trapezoidal(0, 2, 2){ |x| x})
  end
end
