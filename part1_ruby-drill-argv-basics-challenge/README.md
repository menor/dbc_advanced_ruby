# Ruby Drill Argv Basics 
 
##Learning Competencies 
* Use ARGV to take in user input from the command line
* Properly reformat ARGV data to meet to program requirements

##Summary 

 Any Ruby program you write is running inside another pieces of software: the Ruby interpreter.  And that interpreter is itself running inside another piece of software: your operating system.  These software layers "outside" your Ruby program are called **the environment** and there are many ways you can shuttle data between the environment and your program.

One way is via the `ARGV` constant which comes pre-defined in every Ruby program.  It is an `Array` of `Strings` representing the command line arguments.  Consider this simple program:

```ruby
puts "The command line arguments are:"
puts ARGV.inspect
puts ""
```

The output looks like this:

```text
jesse@dewey ~ $ ruby argv.rb these are
The command line arguments are:
["these", "are"]

jesse@dewey ~ $ ruby argv.rb these are the command line arguments
The command line arguments are:
["these", "are", "the", "command", "line", "arguments"]

jesse@dewey ~ $ ruby argv.rb "this come in as one" "this comes in as two"
The command line arguments are:
["this come in as one", "this comes in as two"]

jesse@dewey ~ $ 
```

##Releases
###Release 0: ARGV-ify Pig Latin

Take your pig latin script and augment it so you can do the following:

```
$ ruby pig_latin.rb i love baseball
iay ovelay aseballay
$
```

Save this file as `pig_latin.rb` in your gist.  Remember, you can add multiple files to a gist.

###Release 1: ARGV-ify RPN Calculator

Create a file `rpn.rb` with your [RPN Calculator from Phase 0](https://socrates.devbootcamp.com/challenges/433).  **Note** this challenge was a bonus for Phase 0, so if you didn't do it originally you can either do it now or use an existing solution from another boot (in the Recent Attempts tab) 

Verify the original RPN Calculator code works and then augment it so you can do the following:

```text
$ ruby rpn.rb "3 4 +"
7
```

Note, you'll have to pass in the arguments in quotes because some characters have special meaning on the command-line.  `*` for example means "every file in the current directory."  Probably not what you want to pass in as command-line arguments!

Save this file as `rpn.rb` in your gist.  Remember, you cn add multiple files to a gist. 

