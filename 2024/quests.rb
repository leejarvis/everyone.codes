#!/usr/bin/env ruby

# D1
def d1_sub(str, inc: 0)
  str.gsub(/[ABCDx]/, "A" => 0+inc, "B" => 1+inc, "C" => 3+inc, "D" => 5+inc, "x" => 0)
end
# p1
p d1_sub("ABBAC").chars.map(&:to_i).sum
# p2
p "AxBCDDCAxD".chars.each_slice(2).sum { d1_sub(_1.join, inc: _1.count("x")  > 0 ? 0 : 1).chars.map(&:to_i).sum }
# p3
p "xBxAAABCDxCC".chars.each_slice(3).sum { d1_sub(_1.join, inc: 2 - _1.count("x")).chars.map(&:to_i).sum }
