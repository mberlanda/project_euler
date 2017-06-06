#!/bin/ruby
require 'prime'

def solve(n)
    n.prime_division.flatten.select { |x| Prime.prime?(x) }.max
end

gets.strip.to_i.times do
    n = gets.strip.to_i
    puts solve(n)
end
