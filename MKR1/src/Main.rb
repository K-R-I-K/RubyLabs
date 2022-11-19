#var 9
require './src/Task1'
require './src/Task2'

#task1
=begin
puts "Enter a, b, c, x start, x finish, dx(step):"
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f
start = gets.chomp.to_f
finish = gets.chomp.to_f
step = gets.chomp.to_f

puts solve(a, b, c, start, finish, step)
=end

#task2
store = Store.new([Product.new("beer", "e4567890", "Germany", 10, 90, 1000),
                   Product.new("beer", "e56789", "England", 6, 60, 100),
                   Product.new("sausages", "e567890", "Germany", 8, 30, 500),
                   Product.new("sausages", "e3456789", "England", 4, 40, 300),
                   Product.new("nuts", "e3782632", "England", 3, 1000, 700)])
puts store.to_s
puts "method 1"
puts store.list_by_name("beer")
puts "method 2"
puts store.list_by_cost("beer", 8)
puts "method 3"
puts store.list_by_expiration_date(50)
