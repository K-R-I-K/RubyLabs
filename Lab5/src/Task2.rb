include Math
def my_sum(x, n, e)
  sum = 0
  if n.between?(17, 58)
    (0..n).each do |i|
      sum += yield(x, i)
    end
  else
    i = 0
    while yield(x, i) > e
      sum += yield(x, i)
      i += 1
    end
  end
  sum
end
