require 'minitest/autorun'
require './Main'

class Task1Test < Minitest::Test
  def test_task1
    assert_equal(task1([1, 1, 1, 1], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]]),
                 Vector[4, 4, 4, 4])
    assert_equal(task1([1, 5, 1, 10], [[1, 6,	1, 3], [5, 1,	5, 1], [1, 3,	1, 1], [1, 7,	6, 9]]),
                 Vector[62, 25, 27, 132])
  end
end
