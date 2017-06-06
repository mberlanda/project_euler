#!/bin/ruby

def solve(n)
    range = 0.upto(n)
    (range.reduce(:+) ** 2) - range.reduce { |s, x| s + x**2 }
end

gets.to_i.times do
    n = gets.strip.to_i
    puts solve(n)
end
