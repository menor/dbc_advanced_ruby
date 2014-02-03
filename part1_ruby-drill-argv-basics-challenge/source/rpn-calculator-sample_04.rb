
# INITIAL CODE:
# This is the first version of code to pass the rspec tests and get all green.
class RPNCalculator
  def evaluate(rpn)
    x = []
    rpn.lstrip!
    while rpn.length > 0
      case rpn
        when /\A-?\d+(\.\d+)?/
          x.push($&.to_f)
        when /\S*/
          a = x.pop()
          b = x.pop()
          x.push(b.send($&, a))
      end
      rpn = $'
      rpn.lstrip!
    end
    x.pop()
  end
end





# REFACTORED CODE:
# see: http://sourcemaking.com/refactoring/introduction-to-refactoring
class RPNCalculator
  def evaluate(rpn)
    x = []
    rpn.lstrip!
    until rpn.length <= 0
      case rpn
        when /\A-?\d+(\.\d+)?/
          x.push($&.to_f)
        when /\S*/
          a = x.pop()
          b = x.pop()
          x.push(b.send($&, a))
      end
      rpn = $'
      rpn.lstrip!
    end
    x.pop()
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
# I think the most frustrating part was finding a solution that I
# thought worked and then realized that I was incorrect. Trying to
# continuing to code being very dry.
# learned lstrip – returns copy of string with leading whitespace
# removed
#