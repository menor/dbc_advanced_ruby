
# INITIAL CODE:
# This is the first version of code to pass the rspec tests and get all green.
class RPNCalculator

  attr_accessor :stack

  def initialize
    @stack = [0]
  end

  def push(value)
    stack.unshift(value)
  end

  def add
    nums = stack.shift + stack.shift
    stack.unshift(nums)
  end

  def minus
    nums = stack.shift - stack.shift
    stack.unshift(nums)
  end

  def multiply
    nums = stack.shift * stack.shift
    stack.unshift(nums)
  end

def evaluate(string)
  string.split(" ").map do |x|
    case x
    when "+"
      add
    when "-"
      minus
    when "*"
      multiply
    else
      push(x.to_i)
    end
    return stack
  end
end
end




# REFACTORED CODE:
# see: http://sourcemaking.com/refactoring/introduction-to-refactoring
class RPNCalculator
  def evaluate(string)
    string.split(" ").inject([]) do |stack, element|
      rest_of_stack = stack[2..stack.length]
      case element
      when "+"
        [stack[1] + stack[0]] + rest_of_stack
      when "-"
        [stack[1] - stack[0]] + rest_of_stack
      when "*"
        [stack[1] * stack[0]] + rest_of_stack
      else
        [element.to_i] + stack
      end
    end.first
  end
end





