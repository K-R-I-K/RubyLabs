def integrate_rectangular(a, b, n)
  sum = 0.0
  h = (b - a) * 1.0 / (n.to_f)
  (1..n).each { |i|
    sum += yield(a + i * h - h / 2.0)
  }
  sum *= h
  sum
end

def integrate_trapezoidal(a, b, n)
  sum = yield(a)/2.0
  h = (b - a) * 1.0 / (n.to_f)
  (1...n).each { |i|
    sum += yield(a + i * h)
  }
  sum += yield(b)/2.0
  sum *= h
  sum
end

