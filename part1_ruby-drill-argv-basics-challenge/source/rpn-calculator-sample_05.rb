
# INITIAL CODE:
# This is the first version of code to pass the rspec tests and get all green.

class RPNCalculator

  def evaluate(string)
    stack = Array.new
    values = string.split(" ").each do |x|
      stack.push(x.to_i) if x =~ /\-*\d/
      stack.push(stack.pop + stack.pop) if x == "+"
      stack.push(stack.pop - stack.pop) if x == "-"
      stack.push(stack.pop * stack.pop) if x == "*"
      stack.push(stack.pop / stack.pop) if x == "/"
    end
    return stack[0]
  end
end



# REFACTORED CODE:
# see: http://sourcemaking.com/refactoring/introduction-to-refactoring

class RPNCalculator

  def evaluate(string)
    stack = Array.new
    values = string.split(" ").map {|x| x =~ /\-*\d/ ? stack.push(x.to_i) : stack.push(stack.pop(2).reduce(x.to_sym))}
    return stack[0]
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
=begin
along with using .map over .each, i created a one line if.
this was also a good situation to use regex
=end