#var9
require './src/Task1'
require './src/Task2'
include Math
=begin
def f1(x)
  1 / (1 + sqrt(x))
end
def f2(x)
  1 / (5 - 3 * cos(x))
end

puts integrate_rectangular(0.2,2.1, 1000) {|x| f1(x) }
puts integrate_trapezoidal(0.2,2.1, 1000) {|x| f1(x) }

puts integrate_rectangular(0.2,0.3, 1000) {|x| f2(x) }
puts integrate_trapezoidal(0.2,0.3, 1000) {|x| f2(x) }
=end


def f_sum(x, i)
  x ** (4 * i + 1) / (4 * i + 1).to_f
end

x = nil
loop do
  puts 'Enter x [0.1 <= x <= 0.8]'
  x = gets.chomp.to_f
  break if x.between?(0.1, 0.8)
end

puts 'Enter n:'
n = gets.chomp.to_i

puts my_sum(x, n, 0.001) {|x, i| f_sum(x, i)}
