# Ruby Drill Enumerable Methods

##Learning Competencies

* Use Looping / Repetition structures
* Use Ruby Docs to effectively research existing Ruby methods
* Manipulate array data

##Summary

When you need to operate on a Ruby `Array`, you can accomplish just about anything you can imagine with the `each` method. Often, though, using `each` is not the best way to work with `Array`s.

For example, when you find yourself adding conditional logic inside your `each` block, or using `each` to search, sort, or transform the `Array`, consider the power of Ruby's `Enumerable` module.

Constraint: do not use the `for` or `each` method in any of your solutions to this Challenge. Besides these 2, any other enumerable method is up for grabs!

##Releases

###Release 0 : Utilize Enumerable's other methods

Enumerable is chock full of useful, convenient methods that make working with enumerables much simpler. This exercise will expose you to a handful of these methods. Complete each of the following tasks by using the specific Enumerable method. It's your job to figure out how to call it to perform the desired task.

* Print the elements at indices 1, 3, 5, 7, etc. on separate lines. You should make use of `Enumerable#each_with_index`
* Return the odd numbers from a list of integers. You should make use of `Enumerable#select`
* Return the first number from an Array that is less than a particular number - 'limit.' You should make use of `Enumerable#find`
* Take an Array of Strings and return a new Array with an exclamation point appended to each String. You should make use of `Enumerable#map`
* Calculate the sum of an Array of numbers. You should make use of `Enumerable#reduce`
* Reorganize an Array of the elements into groups of 3, and then sort each group alphabetically. You should make use of `Enumerable#each_slice`


Note: Be careful not to break the driver code.

##Resources

* [Enumerable Module](http://ruby-doc.org/core-2.1.0/Enumerable.html)