# Example of Each
# class Array
#   def my_each
#     self.length.times do |i|
#       yield(self[i])
#     end
#   end
# end

# [1,2,3,4].my_each { |i| puts i }



# 1. Define enumerable methods
# Map, Select, Inject




# -----------
# 2. Write your own method `Array#my_map`
#
# Here is a template to start with:
class Array
  def my_map
    result = []
    self.length.times do |i|
      result << yield(self[i])
    end
    result
  end

  def my_select
    result = []
    self.length.times do |i|
      result << self[i] if yield(self[i])
    end
    result
  end

  def my_inject(start)
    accumulator ||= start
    result = []
    self.length.times do |i|
      accumulator = yield(accumulator, self[i])
    end
    accumulator
  end



end

puts [1,2,3,4].my_map { |i| i -= 1 }  == [0,1,2,3]
puts [1,2,3,4].my_select { |i| i.odd? } == [1,3]
puts [1,2,3,4].my_inject(0) {|acc, i| acc += i} == 10 # makes you count like a programmer!

# add your own test here