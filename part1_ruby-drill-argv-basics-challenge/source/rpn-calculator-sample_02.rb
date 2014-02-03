# INITIAL CODE:
# This is the first version of code to pass the rspec tests and get all green.
class RPNCalculator
  def initialize
  end

  def evaluate(equation)
    evarray = equation.split(" ")
    evtotal = []
    evarray.each do |value|

      if value == "+"
        evtotal[evtotal.length-2] = evtotal[evtotal.length-2] + evtotal.last
        evtotal.pop
      elsif value == "-"
        evtotal[evtotal.length-2] = evtotal[evtotal.length-2] - evtotal.last
        evtotal.pop
      elsif value == "*"
        evtotal[evtotal.length-2] = evtotal[evtotal.length-2] * evtotal.last
        evtotal.pop
      else
        evtotal << value.to_i
      end
  end
  return evtotal.last
  end
end



# REFACTORED CODE:
# see: http://sourcemaking.com/refactoring/introduction-to-refactoring
class RPNCalculator
  def initialize
  end

  def evaluate(equation)
    evarray = equation.split(" ")
    evtotal = []
    evarray.each do |value|
      if value =~ /\d+/
        evtotal << value.to_i
      else
        evtotal << evtotal.pop(2).reduce(value.to_sym)
      end
    end
    return evtotal.last
  end
end





# REVIEW/REFLECT
# Reflection is vital to learning and growth. These challenges should not be thought of as items
# to check off;  they are your opportunities to learn and grow as a programmer.
# Use the following questions to reflect on this challenge.
# Was your strategy for solving the challenge successful?
# What part of your strategy worked? What parts were challenging?
# What questions did you have while coding? Did you find answers to them?
# Are there any concepts that are still confusing to you?
# Did you learn any new skills or ruby tricks?

# INCLUDE REFLECTION HERE:
# My original solution was a bit longer than it should have been.  But I knew there was a way to use regular expressions to get this smaller
# Basically they will replace the conditionals.  (apparently if you just say if its a digit then put an else for everything else its even better)
# This isnt my code but I sort of had a hunch that if I said hey if these symbols exist then convert them to their symbol
# and run that operation on the last two numbers in the array
# The pop(2) is returning the last two elements from our array then it's running reduce on those two numbers using the symbol
# we converted from the string
# it then puts both of them back into the array with the <<
# This works because pop takes the elements out and returns them
# I guess I could say I learned with this exercise that you can take a math operator in string form and convert it to a symbol
# then use the reduce method to combine any elements you want using that symbol to operate on them

