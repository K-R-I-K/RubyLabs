#var 9
require 'matrix'

def task0(a)
  c = Array.new(15)
  index = 0
  15.times do |i|
    if a[i] == 0
      c[index] = i
      index += 1
    end
  end
  15.times do |i|
      if a[i] < 0
        c[index] = i
        index += 1
      end
  end
  15.times do |i|
      if a[i] > 0
        c[index] = i
        index += 1
      end
  end
  c
end
def task1(x, a)
  Matrix[*a] * Vector[*x]
end
def task2(matrix, vec)
  matrix.inverse * vec
end




=begin
a = Array.new(15) { rand(-100..100) }
p a
p task0(a)
=end


=begin
a = (0...8).map { Array.new(8) }
x =  Array.new(8)
8.times do |i|
  8.times do |j|
    a[i][j] = i == j ? 1 : rand(10)
  end
  x[i] = rand(10)
end

p x
p a
p task1(x, a)
=end



n = nil
loop do
  puts 'Enter n (n >= 3 and n <= 9):'
  n = gets.chomp.to_i
  break if n.between?(3, 9)
end
a = (0...n).map { Array.new(n) }
n.times do |i|
  n.times do |j|
    a[i][j] = i == j ? 2 : 11
  end
end
matrix_a = Matrix[*a]
b = (1..n)
vec_b = Vector[*b]
puts matrix_a
puts vec_b
puts task2(matrix_a, vec_b)

