# Implement an iterative version of the factorial function
def factorial_iterative(n)
  factorial = 1
  while n > 0
    factorial *= n
    n -= 1
  end
  factorial
end

# Implement a recursive version of the factorial function
def factorial_recursive(n)
  return 1 if n == 0
  n * factorial_recursive(n-1)
end



p factorial_iterative(5) == 120
p factorial_iterative(4) == 24
p factorial_iterative(11) == 39916800
p factorial_recursive(5) == 120
p factorial_recursive(11) == 39916800
p factorial_recursive(0) == 1
p factorial_iterative(50)

# This will break between 8000 and 9000
# i = 8000
# while i < 9000
#   p factorial_recursive(i)
#   p i
#   i +=1
# end
require 'Benchmark'
n = 1000
Benchmark.bmbm(7) do |x|
  x.report("factorial_iterative")   { n.times { factorial_iterative(500) } }
  x.report("factorial_recursive") { n.times { factorial_recursive(500) } }
end