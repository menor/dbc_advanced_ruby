# PSEUDOCODE
# Please write your pseudocode here and keep it commented
# INPUT: expression in Reverse Polish notation
# OUPUT: the result of that expression as an integer
# What are the steps to solve the problem?  Write them out in plain english as best you can.
# Go through and flip it so that the operands are in "normal place"
# Run that calculation
# Return output

# INITIAL CODE:
# This is the first version of code to pass the rspec tests and get all green.

class RPNCalculator
  def evaluate(expression)
    @expression = expression
    while true
      @expression.gsub!(/(\-?\d+\s)(\-?\d+\s)(?=[+*-])([+*-])/, '(\1 \3 \2)')
      @expression.gsub!( /\(.+?\)/ ) { |match| eval(match).to_s }
      break if @expression =~ /^[\d\-]*$/
    end
    @expression.to_i
  end
end

# REFACTORED CODE:
# see: http://sourcemaking.com/refactoring/introduction-to-refactoring

class RPNCalculator
  def evaluate(expression)
    until expression =~ /^[\d\-]*$/
      expression.gsub!(/(\-?\d+\s)(\-?\d+\s)(?=[+*-])([+*-])/, '(\1 \3 \2)')
      expression.gsub!( /\(.+?\)/ ) { |match| eval(match).to_s }
    end
    expression.to_i
  end
end

# DRIVER CODE:
calc = RPNCalculator.new
p calc.evaluate('70 10 4 + 5 * -')
p calc.evaluate('1 2 +') == 3
p calc.evaluate('2 5 *') == 10
p calc.evaluate('50 20 -') == 30
p calc.evaluate('0') == 0
p calc.evaluate('-1') == -1
p calc.evaluate('1 1 +') == (1 + 1)
p calc.evaluate('1 -1 +') == 0
p calc.evaluate('2 2 *') == (2 * 2)
p calc.evaluate('5 10 -') == (5 - 10)
p calc.evaluate('1 2 3 4 + + +') == (1 + 2 + 3 + 4)
p calc.evaluate('1 2 + 3 4 + *') == ((2 + 1) * (4 + 3))
p calc.evaluate('20 10 5 4 + * -') == (20 - 10*(5 + 4))
p calc.evaluate('70 10 4 + 5 * -') == 0

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

# I pair programmed with Charles for this. We weren't scheduled, but we chose to work together for fun.
# He drove and I navigated. He had the idea of using regex to put the operand in the normal place.
# We really worked together to keep improving the code and to keep extending its functionality.
# I converted the driver code out of the Socrates rspecs.
# It was a lot of fun and I love that we basically just used #gsub and #eval and #to_i and #to_s as ancillary functions.
# In doing this, Charles taught me about #eval and lookaheads in regex.
# We both learned that we could execute a block on the matches of a regex expression.

# REFERENCES:
# https://gist.github.com/malandrina/3744867/
# http://stackoverflow.com/questions/17417175/
# http://stackoverflow.com/questions/9996798/