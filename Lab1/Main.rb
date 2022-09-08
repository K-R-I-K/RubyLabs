puts("Enter x")
x = gets.to_f
puts("Enter a")
a = gets.to_f
puts("Enter f")
f = gets.to_f

y = nil

begin
y = (4.1 * 10**-1.7)/((x - Math::PI) * Math.sin(5 * x)) +
  (Math.tan(x.abs)**3 - Math.log10(Math.sqrt(a + f))) / Math::E**Math::PI
rescue
  puts("Invalid input")
end

puts(y)
