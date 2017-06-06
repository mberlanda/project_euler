#!/bin/ruby

def summation(x)
    x*(x+1)/2
end

def solve(n)
    x, y, z = n/3, n/5, n/15
    3 * summation(x) + 5*summation(y) - 15 * summation(z)
end

gets.strip.to_i.times do
    n = gets.strip.to_i
    puts solve(n-1)
end
