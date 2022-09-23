# var 9
def task1()
  a = true
  b = true
  c = false
  x = -20
  y = 60
  z = 4
  puts "task 1.1"
  puts "a) " + (!(a || b) && (a && !b)).to_s
  puts "b) " + ((z != y).object_id <= (6 >= y).object_id && a || b && c && x >= 1.5).to_s
  puts "c) " + ((8 - x * 2 <= z) && (x ** 2 != y ** 2) || (z >= 15)).to_s
  puts "d) " + (x > 0 && y < 0 || z >= (x * y - (y / x.to_f)) + (-z)).to_s
  puts "e) " + (!(a || b && !(c || (!a || b)))).to_s
  puts "f) " + (x ** 2 + y ** 2 >= 1 && x >= 0 && y >= 0).to_s
  puts "g) " + ((a && (c && b != b || a) || c) && b).to_s

  n = 3.0
  m = -6.0
  p = false
  q = false
  puts "task 1.2"
  puts (n / m + m / n > 3) && (p && q || !p && q)
end
def task2()
  puts "task 2"
  puts "Enter x"
  x = gets.chomp.to_f

  case x
  when -4..0
    y1 = ((x-2).abs / (x ** 2 * Math.cos(x)))**(1.0/7)
  when 0..12
    y1 = 1 / (Math.tan(x + 1 / Math.exp(x)) / Math.sin(x)**2)**(2.0/7)
  else
    y1 = 1 / (1 + x / (1 + x / (1 + x)))
  end

  if -4 <= x && x <= 0
    y2 = ((x-2).abs / (x ** 2 * Math.cos(x)))**(1.0/7)
  elsif 0 < x && x <= 12
    y2 = 1 / (Math.tan(x + 1 / Math.exp(x)) / Math.sin(x)**2)**(2.0/7)
  else
    y2 = 1 / (1 + x / (1 + x / (1 + x)))
  end

  puts "#{y1}, #{y2}"
end
def task3()
  sum = 1.0
  (1..8).each { |i|
    sum += 1 / (3 ** i).to_f
  }
  puts "task 3.2"
  puts sum

  n = 0
  puts "task 3.5"
  loop do
    puts "Enter n: "
    n = gets.chomp.to_i
    puts "incorrect input" unless n > 0
    break if n > 0
  end
  def sqrt_sum (n)
    n > 1 ? Math.sqrt(2 + sqrt_sum(n - 1)) : Math.sqrt(2)
  end
  puts sqrt_sum(n)
end
def task4()
  e = 0.00001
  er = 1.0
  sum = 0.0
  n = 2
  def factorial n
    n > 1 ? n * factorial(n - 1) : 1.0
  end
  while er > e
    er = (factorial(n - 1) / factorial(n + 1)) ** (n * (n + 1))
    sum += er
    n += 1
  end
  puts "task 4.1"
  puts sum

  puts "task 4.2"
  puts "Enter a:"
  a = gets.chomp.to_f
  puts "Enter x:"
  x = gets.chomp.to_f
  n = 0
  er = 1.0
  sum = 1
  while er > e
    er = (x * Math.log(a)) / factorial(n)
    sum += er
    n += 1
  end
  puts ((sum - a ** x) > e ? false : true).to_s

  er = 1.0
  sum = 0.0
  n = 1
  while er > e
    er = (factorial(3 * n - 1) * factorial(n + 1)) / (factorial(4 * n) * factorial(2 * n))
    sum += er
    n += 1
  end
  puts "task 4.3"
  puts sum
end
def task5()
  n = 9
  c = 5
  x = 1.0
  puts "task 5.1"
  (1..n+c).each do |i|
    #puts "x = #{x} i = #{i}"
    puts (x - c) / (x ** (3 / 4.0) + x ** (1.0 / n) * c ** (1 / 4.0)) *
           (x ** (1 / 2.0) * c ** (1 / 4.0) + n ** (1 / 4.0)) / (x ** (1 / 2.0) + c ** (1/ 2.0)) *
           (x ** (1 / 4.0) * c ** (-1 / 4.0)) / (x ** (1 / 2.0) - 2 * x ** (1 / 4.0) * c ** (1 / 4.0) + c ** (1.0 / n))
    x += (n - 1) / (n + c - 1).to_f
  end
  x = (Math::PI / n).to_f
  puts "task 5.2"
  (1..3 * n /2 + c).each do |i|
    #puts "x = #{x} i = #{i}"
    puts Math.sin(2 * x) ** 2 - Math.cos(Math::PI / 3.0 - 2 * x) * Math.sin(2 * x - Math::PI / 6.0) -
           (1 / Math.tan((Math::PI + x) / (x + 1))) ** (2.0 / x)
    x += (Math::PI - (Math::PI / n).to_f) / (3 * n /2 + c - 1)
  end
  puts "task 5.3"
  x = 2
  (1..n).each do |i|
    #puts "x = #{x} i = #{i}"
    puts (x - c) / (x ** (3 / 4.0) + x ** (1.0 / n) * c ** (1 / 4.0)) *
           (x ** (1 / 2.0) * c ** (1 / 4.0) + n ** (1 / 4.0)) / (x ** (1 / 2.0) + c ** (1/ 2.0)) *
           (x ** (1 / 4.0) * c ** (-1 / 4.0)) / (x ** (1 / 2.0) - 2 * x ** (1 / 4.0) * c ** (1 / 4.0) + c ** (1.0 / n))
    x += (c - 2.0) / (2 * n - 1)
  end
  (n + 1..2 * n).each do |i|
    #puts "x = #{x} i = #{i}"
    puts  Math.sin(2 * x) ** 2 - Math.cos(Math::PI / 3.0 - 2 * x) * Math.sin(2 * x - Math::PI / 6.0) -
            (1 / Math.tan((Math::PI + x) / (x + 1))) ** (2.0 / x)
    x += (c - 2.0) / (2 * n - 1)
  end
end

#task1
#task2
#task3
#task4
task5