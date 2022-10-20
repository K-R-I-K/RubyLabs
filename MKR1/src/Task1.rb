def f1(a, b, x)
  a * x ** 2 + b ** 2 * x
end
def f2(c, x)
  x - 1 / (x - c)
end
def f3(c, x)
  1 + x / c
end
def func(a, b, c, x)
  f = if a < 0 && x != 0
        f1(a, b, x)
      elsif a > 0 && x == 0
        f2(c, x)
      else
        f3(c, x)
      end

  if (!(a.to_i | b.to_i) & (b.to_i | c.to_i)) != 0
    f.to_f
  else
    f.to_i
  end
  f
end

def solve(a, b, c, start, finish, step)
  x = start.to_f
  ans = ""
  while x <= finish
    ans += "x: " + x.round(3).to_s + " f: " + func(a, b, c, x).round(3).to_s + "\n"
    x += step
    break if step == 0
  end
  ans
end
