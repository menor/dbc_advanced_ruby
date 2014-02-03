
# Input: A number
# Until n equals the index of the last number in the fib sequence.
# Add numbers in the fib sequence to the fibonacci array.
# => To do this we add the prior two numbers to the array.
# Return the last number.


def fibonacci_iterative(n)
  return 0 if n == 0
  fib_sequence = [0,1]
  index = 1
  until n == index
    fib_sequence << fib_sequence[index] + fib_sequence[index-1]
    index += 1
  end
  fib_sequence.last
end

# Recursive Solution
#


def fibonacci_recursive(num,current_fib=1, prior_fib=0)
  fib_sequence ||= [prior_fib]
  fib_sequence.push(current_fib)
  return prior_fib if num == 0
  fibonacci_recursive(num-1, current_fib+prior_fib, current_fib)
end

def fibonacci_slow(n)
   n <= 1 ? n :  fibonacci_slow( n - 1 ) + fibonacci_slow( n - 2 )
end

# p fibonacci_iterative(0) == 0
# p fibonacci_iterative(1) == 1
# p fibonacci_iterative(2) == 1
# p fibonacci_iterative(3) == 2
# p fibonacci_iterative(4) == 3
# p fibonacci_iterative(5) == 5

# p fibonacci_recursive(0) == 0
# p fibonacci_recursive(1) == 1
# p fibonacci_recursive(2) == 1
# p fibonacci_recursive(3) == 2
# p fibonacci_recursive(4) == 3
# p fibonacci_recursive(5) == 5

require 'benchmark'

n = 1000
Benchmark.bmbm(7) do |x|
  x.report("fibonacci_iterative")   { n.times { fibonacci_iterative(10) } }
  x.report("fibonacci_recursive") { n.times { fibonacci_recursive(10) } }
  x.report("fibonacci_slow") { n.times { fibonacci_slow(10) } }
end