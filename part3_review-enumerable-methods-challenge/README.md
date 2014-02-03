# Review Enumerable Methods

##Releases

### Release 1: Define enumerable methods

In comments, make a note of what `Array#map`, `Array#inject` and `Array#select` do.

### Release 2: Write your own method

Then, write a method `Array#my_map` that replicates the `#map` method on an array. Your method can use other enumerables but it must contain a `yield` statement.

To illustrate, here is an example of replicating the `#each` method using `length.times`.  Notice that this example uses `self` to allow the method to be called on the Array object.

If you are unclear on the use of `self`, you can revisit [this exercise](http://socrates.devbootcamp.com/labs/ruby/objects-and-classes/objects-and-instantiation).

```ruby
class Array
  def my_each
    self.length.times do |i|
      yield(self[i])
    end
  end
end

[1,2,3,4].my_each { |i| puts i }
```

Oh, and don't do this:

```ruby
class Array
  alias :my_map :map
end
```

That avoids the intent of this exercise. Not cheating, but it doesn't help you learn much.

**WARNING:** What we are doing here is called "extending a core class".  As in, you are adding a new method `#my_map` to the Array class and extending it's pool of potential methods. This is generally a no-no, but may be used in rare cases.  "Extending a class" (without the "core" part) is different and very common and useful, which usually means adding new methods to one of your own classes (like adding a `#check_rows` method to class `SudokuBoard`).
