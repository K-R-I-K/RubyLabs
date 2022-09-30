require 'minitest/autorun'
require './Main'

class Task0Test < Minitest::Test
  def test_task0
    assert_equal(task0([1, 2, 3, 4, 5, 0, -5, -4, -3, -2, -1, 0, 0, 0, 0]),
                 [5, 11, 12, 13, 14, 6, 7, 8, 9, 10, 0, 1, 2, 3, 4])
    assert_equal(task0([1, -1, 1, -1, 1, -1, 0, 0, 0, -1, 1, -1, 1, -1, 1]),
                 [6, 7, 8, 1, 3, 5, 9, 11, 13, 0, 2, 4, 10, 12, 14])
  end
end
