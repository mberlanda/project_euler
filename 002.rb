#!/bin/ruby

fib = Enumerator.new &-> y {
  a, b = 0,1
  loop {
    y << a
    a,b = a+b,a
  }
}

def solve(n, fib)
  fib.lazy.take_while{ |x| x < n }.select{ |y| y %2 == 0 }.inject(&:+)
end

gets.strip.to_i.times do
    n = gets.strip.to_i
    puts solve(n, fib)
end
