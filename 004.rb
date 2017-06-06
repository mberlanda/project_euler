#!/bin/ruby

prod = Enumerator.new { |yielder|
  (100...999).each do |x|
    (100...999).each do |y|
      n = x*y
      yielder << n if n.to_s == n.to_s.reverse
    end
  end
}.lazy.sort

def solve(enum, n)
    enum.take_while {|x| x < n }.max
end

gets.to_i.times do
    n = gets.strip.to_i
    puts solve(prod, n)
end
