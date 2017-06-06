#!/bin/ruby

def solve(n)
    (1..n).inject(:lcm)
end

gets.to_i.times do
    n = gets.strip.to_i
    puts solve(n)
end
