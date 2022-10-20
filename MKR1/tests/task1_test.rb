require 'minitest/autorun'
require './src/Task1'

class Task1Test < Minitest::Test
  def test_task1_1
    expected = "x: 0.0 f: 1.0\n"<<
                "x: 0.1 f: 1.1\n"<<
                "x: 0.2 f: 1.2\n"<<
                "x: 0.3 f: 1.3\n"<<
                "x: 0.4 f: 1.4\n"<<
                "x: 0.5 f: 1.5\n"<<
                "x: 0.6 f: 1.6\n"<<
                "x: 0.7 f: 1.7\n"<<
                "x: 0.8 f: 1.8\n"<<
                "x: 0.9 f: 1.9\n"<<
                "x: 1.0 f: 2.0\n"
    assert_equal(expected, solve(1, 1, 1, 0, 1, 0.1))
  end

  def test_task1_2
    expected = "x: -1.0 f: -5.0\n"<<
                "x: -0.9 f: -4.41\n"<<
                "x: -0.8 f: -3.84\n"<<
                "x: -0.7 f: -3.29\n"<<
                "x: -0.6 f: -2.76\n"<<
                "x: -0.5 f: -2.25\n"<<
                "x: -0.4 f: -1.76\n"<<
                "x: -0.3 f: -1.29\n"<<
                "x: -0.2 f: -0.84\n"<<
                "x: -0.1 f: -0.41\n"<<
                "x: 0.0 f: 0.0\n"<<
                "x: 0.1 f: 0.39\n"<<
                "x: 0.2 f: 0.76\n"<<
                "x: 0.3 f: 1.11\n"<<
                "x: 0.4 f: 1.44\n"<<
                "x: 0.5 f: 1.75\n"<<
                "x: 0.6 f: 2.04\n"<<
                "x: 0.7 f: 2.31\n"<<
                "x: 0.8 f: 2.56\n"<<
                "x: 0.9 f: 2.79\n"<<
                "x: 1.0 f: 3.0\n"
    assert_equal(expected, solve(-1, 2, 3, -1, 1, 0.1))
  end
end
