require 'minitest/autorun'
require './Main'

class Task2Test < Minitest::Test
  def test_task2
    assert_equal(task2(Matrix[[2, 1, 1], [1, 2, 1], [1, 1, 2]], Vector[1, 1, 1]),
                 Vector[1.0/4, 1.0/4, 1.0/4])
  end
end
