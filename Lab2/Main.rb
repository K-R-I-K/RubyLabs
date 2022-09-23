# var 9
def area (dots)
  s = 0
  (0...dots.length - 1).each { |i|
    s += (dots[i][0] + dots[i + 1][0]) * (dots[i][1] - dots[i + 1][1])
  }
  s += (dots[dots.length - 1][0] + dots[0][0]) * (dots[dots.length - 1][1] - dots[0][1])
  s.abs / 2
end
def range (p, t, r)
  (p ** r * (1 - p ** -t)).round
end
def bin_to_dec(bin)
  bin.to_s(10)
end
def dec_to_bin(dex)
  dex.to_s(2)
end

#dots = [[1, 1], [4, 2], [5, 3]]

dots = [[52,289], [46,258], [63,240], [94,234], [132,236],
       [184,234], [198,207], [171,181], [120,171], [92,157],
       [49,134], [43,99], [63,82], [109,69], [157,59],
       [202,57], [245,51], [278,47], [309,41], [340,31],
       [379,33], [415,61], [430,86], [447,140], [474,196],
       [483,245], [471,274], [411,292], [350,30], [299,308],
       [250,309], [193,308], [154,308], [111,309], [84,302]]
#puts area(dots)
#puts range(6, 15, 10)
#puts range(2, 64, 16)
#puts bin_to_dec(0b100011111001)
puts dec_to_bin(444)