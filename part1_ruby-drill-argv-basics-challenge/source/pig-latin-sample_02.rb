# Solution for Challenge: Pig-latin. Started 2014-01-28T14:52:16+00:00

def translate_to_pig_latin(string)
  final_output = []

  words = string.split(" ")
  words.each do |word|
    if word.downcase.match(/^[aeiou]/)
      final_output << word + " "
    else
      characters = word.split(" ")
      characters.each_with_index do |character, index|
        if character.downcase.match(/[aeiou]/)
          split_word = characters.slice!(0...index)
          characters = characters.concat(split_word)
          final_output.push(characters)
          final_output.push("ay ")
          break
        end
      end
    end
  end

  final_output.last.slice!(-1) #this solution needs some refactoring.  for example, this line is here because the code inserts an extra space at the end of the string.  It also doesn't treat punction marks properly, it'll move tem to the middle of words
  return final_output.join()
end

p translate_to_pig_latin("cat hat eat apple")

# p translate_to_pig_latin("cata")
#array2 = c
#characters = at


#################################################

# My first comment is that the code doesn't work. I expect ...

# translate_to_pig_latin("cat hat eat apple")
# # => "atcay athay eat apple"
# ... but I get "catay hatay eat apple" I think the problem is in Line11 where you're attempting
#  to split word into an array of characters, but you're trying to break on " " which doesn't work;
#   it returns and array with the string as its only element. The break the word into characters,
#    you would need to split on an empty string or you could call String#chars.

# In Line 8, you're determining whether or not a word begins with a vowel so that you know whether
#  or not you need to convert it to pig latin. Your regular expression only handles lowercase
#  letters, so you're calling word.downcase. Another option is to write a regular expression that
#  handles both lowercase and uppercase letters. This is possible by making the regular expression
#  case insensitive. To do this add an i to the end of the regular expression: /^[aeiou]/i

# Now, within your block on Lines 12 to 20, you're trying to find the first vowel so that you can
#  slice off all the consonants before that character. Because you've already determined that the
#   word starts with a vowel, you can use a regex to find those consonants at the beginning.
#   Something like /\A[^aeiou]+/i would match the opening consonants. You could use that with
#   String#slice! or you could expand the regular expression to match the whole string and use
#   String#sub ...

# "string".sub(/\A([^aeiou]+)(\w+)/i,'\2\1ay' )
# # => "ingstray"
# The problem on Line 24 where you have to remove the extra space at the end is a side effect
# of shoveling word = " " into final output. You're adding the space to the end of the words,
# I assume, so that when you join the elements in the array, the words have a space between them.
# It's unnecessary to do that. When calling Array#join we can pass an argument; that argument will
# be put between each element.

# ["a", "b", "c"].join("-----")
# # => "a-----b-----c"

# ["a", "b", "c"].join(" ")
# # => "a b c"
# Finally, the Pig Latin challenge is a great example of writing methods that do one thing.
#   Before you wrote a method that converts sentences to pig latin, you should have written a
#   method that converts words. The method that converts sentences can then make use of the
#   word pig latinizing function. It would look something like ...

# def pig_latin(word)
#   # Transform the word to pig latin and return it.
# end

# def translate_sentence(sentence)
#   words = sentence.split
#   latinized_words.map { |word| pig_latin(word) }
#   latinized_words.join(" ")
# end
