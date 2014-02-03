# Algorithm Drill Factorial

##Learning Competencies

* Writing recursive methods
* Use methods to modularize code

##Summary

We're going to write a Ruby method `factorial` to compute the [factorial](http://en.wikipedia.org/wiki/Factorial) of an integer. You've [done this before as an exercise](https://socrates.devbootcamp.com/exercises/21), so feel free to look at other students' solutions.

The focus this time around will be on understanding **[recursion](http://en.wikipedia.org/wiki/Recursion_%28computer_science%29)**.

If you don't remember, the **factorial** of a non-negative integer `n`, denoted `n!`, is the product of all positive integers less than `n`. For example,

```shell
5! = 5 * 4 * 3 * 2 * 1 
6! = 6 * 5 * 4 * 3 * 2 * 1 
      ......

n! = n * (n - 1) * (n - 2) ..... * 2 * 1
   
```

The factorial function wasn't pulled out of a mathematician's hat, it has a very concrete meaning. If you have 3 socks, for example, there are 3! = 6 ways to order those socks. In general, if you have a set of `n` things then there are `n!` ways to order those things.

By convention we define:

```shell
0! = 1
```

So that we can formally define the factorial as:

```shell
n! =
  1 if n = 0 
  n * (n-1)! & otherwise
```

This definition is called **recursive** because we define the factorial of `n` in terms of the factorial of `n-1`. We stop at the **base case**, where `n = 0`.

This is your first run-in with **recursion** at DBC. It will seem strange at first, but you'll quickly get used to it. Eventually, you'll develop a kind of sixth sense and start saying things like, "This feels like a recursive problem."

The most important thing to understand is that every recursive problem has some number of **base cases**, the condition that acts like the "kick" from Inception, bumping you back up ever-closer to where you came from. The base case is the part of the recursive problem that is not defined in terms of itself.

"What are the base cases?" should be the first question you ask every time you want to approach a problem recursively. Many recursive problems have only one base case, but others have more.

##Releases

###Release 0 : Factorial, Iteratively

Implement an iterative version of the factorial function called `factorial_iterative`. It should accept any non-negative integer as input. Don't worry about handling bad input.

###Release 1 :  Factorial, Recursively

Implement a recursive version of the factorial function called `factorial_recursive`. It should accept any non-negative integer as input. Don't worry about handling bad input.

What's the largest value your recursive factorial function can take as its input before it crashes? What does the error mean?

<!-- ##Optimize Your Learning -->

##Resources

* [recursion](http://en.wikipedia.org/wiki/Recursion_%28computer_science%29)
* [factorial](http://en.wikipedia.org/wiki/Factorial)