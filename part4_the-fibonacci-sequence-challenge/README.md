# The Fibonacci Sequence

##Learning Competencies

* Model a simple real-world system in Ruby code.
* Method definition, arguments, and return values.
* Use looping and iteration.
* Use recursion.
* Use tools to evaluate basic performance considerations, benchmarking, and tradeoffs between memory and speed.

##Summary

We're going to have you implement two versions of the [Fibonacci sequence](http://en.wikipedia.org/wiki/Fibonacci_number): an iterative version and a recursive version. We'll compare the performance of each and discuss potential improvements. They'll be methods called `fib_iterative` and `fib_recursive`, respectively, which take an integer `n` as input and returns the `n`th Fibonacci number.

Each version will work as follows:

```ruby
def fib_iterative(n)
  # returns the nth Fibonacci number
end

fib_iterative(0) = 0
fib_iterative(1) = 1
fib_iterative(2) = 1
fib_iterative(3) = 2
fib_iterative(4) = 3
fib_iterative(5) = 5
# etc…
```

Although writing a method to return Fibonacci numbers might seem contrived, we work through it because the rules of the system are easy to model in code. It helps us understand what a makes a good model or a bad model, and also different ways to model the same system, e.g., even though, functionally, an iterative and recursive solution produce the same output given the same input, they perform very differently.


##Releases

###Release 0 : Iterative Version

Write an **iterative** method to calculate Fibonacci numbers called `fibonacci_iterative`. This means you should use looping methods like `Fixnum#times`, `Fixnum#upto`, `Array#each`, etc.

###Release 1 : Recursive Version

Write a **recursive** method to calculate Fibonacci numbers called `fibonacci_recursive`. This means you should not use *any* loops, but instead call itself recursively.

##Optimize Your Learning

* Read more about the [Fibonacci Numbers](fib_reference.md)
* As you're coding, ask yourself…
  * What kind of values can my method take as its input/arguments?
  * What kind of values can my method return?
  * Are there any tradeoffs I'm making? Memory versus speed? Readability versus speed? On what side of those tradeoffs am I falling and why? What might my code look like if I fell on the other side of those tradeoffs?
  * Are there any method arguments that don't make sense? What should my program do in that situation? "Ignore them" is one valid answer—what are others?
  * How large can my input be before it takes too long for my program to run? How long is "too long?"

##Resources

* [quick intro to recursion](https://gist.github.com/amgando/269d2230c6e0f66379bb)
* Doodling in Math: Spirals, Fibonacci, and Being a Plant: [Part 1](http://www.youtube.com/watch?v=ahXIMUkSXX0), [Part 2](http://www.youtube.com/watch?v=lOIP_Z_-0Hs), and [Part 3](http://www.youtube.com/watch?v=14-NdQwKz9w)
* [Fibonacci Numbers on Wikipedia](http://en.wikipedia.org/wiki/Fibonacci_number)
* [Ruby Kickstart - Introduction to Recursion](https://vimeo.com/24716767)
