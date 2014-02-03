# CHALLENGE TITLE

##Learning Competencies

- demonstrate literacy of advanced Ruby idioms and syntactic structures
- apply advanced Ruby idioms when refactoring code
-

## Summary

This challenge is about exposing yourself to some of the more advanced concepts in Ruby, playing with new syntax and generally melting your brain

## Releases


### Release 0: Simplicity

[Rails Conf 2012 Keynote: Simplicity Matters by Rich Hickey](http://www.youtube.com/watch?v=rI8tNMsozo0)

*Rich Hickey, the author of Clojure and designer of Datomic, is a software developer with over 20 years of experience in various domains. Rich has worked on scheduling systems, broadcast automation, audio analysis and fingerprinting, database design, yield management, exit poll systems, and machine listening, in a variety of languages.*

Watch the video above and consider it's implications in your own work


### Release 1: Exploring New Frontiers

Watch these two videos by Peter Cooper.

The first includes a good overview of "code as data" with procs, lambdas and closures in Ruby. The second walks you through a series of neat Ruby tricks.


- [An Introduction to Procs, Lambdas and Closures in Ruby](http://www.youtube.com/watch?v=VBC-G6hahWA)

- [Ruby Trick Shots: 24 Ruby Language Tips and Tricks](http://www.youtube.com/watch?v=gIEMKOI_Y-4)


### Release 3: Follow the leaders

Avdi Grimm is a powerhouse of teaching and learning in the Ruby community.

Review the following list of videos.  The order they appear on this page may help you make sense of their content.

Oh, and Avdi also wrote this book: [Confident Ruby](https://www.dropbox.com/s/rcckja70nwn6q14/Confident%20Ruby.pdf).  You should read it.

> This is a book about Ruby, and about joy.

> If you've written applications of substantial size in Ruby, you've probably experienced this progression from idealistic beginnings to somewhat less satisfying daily reality. You've noticed a steady decline in how much fun a project is the larger and older it becomes. You may have even come to accept it as the inevitable trajectory of any software project.

> I introduce an approach to writing Ruby code which, when practiced dilligently, can help reverse this downward spiral. It is not a brand new set of practices. Rather, it is a collection of time-tested techniques and patterns, tied together by a common theme: self confidence.

> This book's focus is on where the rubber meets the road in object-oriented programming: the individual method. I'll seek to equip you with tools to write methods that tell compelling stories, without getting lost down special-case rabbit holes or hung up on tedious type-checking. Our quest to write better methods will sometimes lead us to make improvements to our overall object design. But we'll continually return to the principal task at hand: writing clear, uncluttered methods.


#### Testing

[Outside-In](http://www.rubytapas.com/episodes/120-Outside-In)

In today's episode I tackle the question of how many tests are enough. I'll show how for me, it's all about how long it's been since I last got new information from a test.
note: you can learn a lot about a robust approach to software construction without understanding any of the details of this program


#### Ruby Idioms

[Incidental Change](http://www.rubytapas.com/episodes/24-Incidental-Change)

Have you ever looked at a diff that was cluttered by meaningless "noise" - changes that existed just to satisfy the parser, and were a distraction from the semantic changes to the code? In this episode we look at some idioms and habits to help avoid these kinds of incidental changes.


#### OOP

[Struct](http://www.rubytapas.com/episodes/20-Struct)

In previous episodes we've used the Struct class in passing to quickly construct classes. This time, we put Struct in the spotlight, and put it through its paces. You'll want to watch this one through even if you're familiar with Struct; you may find it has more tricks up its sleeve than you realized.

[Constructors](http://www.rubytapas.com/episodes/7-Constructors)

A look into how Ruby's object construction works, and how we can customize constructors for special scenarios.


#### Advanced Ruby

[Hash Default Value](http://www.rubytapas.com/episodes/45-Hash-Default-Value)

This cautionary episode demonstrates and explains a Hash gotcha that often comes as a surprise.


[Streaming](http://www.rubytapas.com/episodes/42-Streaming)

Does code optimized for RAM usage need to be ugly? Find out, in today's episode!
note: to understand the expression `"#{$$}"` see: http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Variables_and_Constants#Pre-defined_Variables

[Yield or Enumerate](http://www.rubytapas.com/episodes/64-Yield-or-Enumerate)

A number of Ruby standard library methods return an Enumerator if no block is passed to them. In this episode, we'll learn how to emulate this behavior in our own methods.

[Method and Message](http://www.rubytapas.com/episodes/11-Method-and-Message)

A look at the difference between methods and messages, and why passing methods around isn't as common in Ruby as it is in e.g. JavaScript.

[Callable](http://www.rubytapas.com/episodes/35-Callable)

Many different kinds of Ruby objects respond to #call. Today's dish is a demonstration of how this fact can be harnessed to easily swap out different implementations of a collaborator object.

[Macros and Modules](http://www.rubytapas.com/episodes/27-Macros-and-Modules)

In this episode, we look at how to use dynamically generated modules to make metaprogrammed methods open for future extension.

