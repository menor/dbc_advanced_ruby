# Script: CONVERT TO PIG LATIN

# Iteration One: CONVERT SINGLE WORD

# GET a word from user input
# IF the word starts with a vowel, don't change it
# ELSE replace the word with its pig latin equivalent
#   GET all of the consonants before the first vowel in the word
#   SET the consonants at the end of the word and add the suffix "ay"
# ENDIF
# PRINT the pig-latin-ified word

# Refactored
def convert_word_pig_latin(word)
  p word.gsub( /\b([b-df-hj-np-tv-z])(\w+)/i ) { "#{$2}#{$1}ay" }
end

convert_word_pig_latin("apple")
convert_word_pig_latin("string")
convert_word_pig_latin("constantine")

# Original Code
# def convert_word_pig_latin(word)
#   p word.gsub( /\b([b-df-hj-np-tv-z])(\w+)/i ) { "#{$2}#{$1}ay" }
#   regex = /\A[b-df-hj-np-tv-z]+/
#   if word =~ regex   # Does the beginning of the word begin with a vowel (^ = any character except)?
#     puts word.partition(regex)[2] + word.partition(regex)[1] + "ay"   # partition at first non consonant and add values at index for match, and sucessive characters
#   else
#     puts word
#   end
# end

# convert_word_pig_latin("apple")
# convert_word_pig_latin("string")
# convert_word_pig_latin("constantine")

# Iteration Two: CONVERT COMPLETE SENTENCE

# GET a sentence from user input
# FOR each word in the sentence
#   CONVERT SINGLE WORD
# ENDFOR
# PRINT the converted sentence
# DISPLAY the number of words converted

# New refactored code after 5 HOURS of studying regular expressions
def convert_sentence_pig_latin(sentence)
  p sentence.gsub( /\b([b-df-hj-np-tv-z])(\w+)/i ) { "#{$2}#{$1}ay" }.downcase.capitalize
end

convert_sentence_pig_latin("Mary had a little lamb.")

# Original Code
# def convert_sentence_pig_latin(sentence)
#   p split_sentence = sentence.split(/\W/)
#   regex = /^[b-df-hj-np-tv-z]+/x
#   pig_latin_sentence = []
#   split_sentence.each do |word|
#     if word =~ regex
#       pig_latin_sentence << word.partition(regex)[2] + word.partition(regex)[1] + "ay"
#     else
#       pig_latin_sentence << word
#     end
#   end
#   p pig_latin_sentence.join(" ").downcase.capitalize + "."
# end


#######################################


# I like that you were able to use String#gsub to write a short method to convert everything to
# pig latin. It doesn't quite work exactly as it should though.

# This is the regular expression that you're using. Let's see if we can't touch it up.

# /\b([b-df-hj-np-tv-z])(\w+)/i
# First off, your first group is looking for a consonant. Just one. So ...

# convert_word_pig_latin("string")
# # => "tringsay"
# ... but it should return "ingstray" because in pig latin, you want to move all consonants
# before the first vowel to the end of the string. The solution is to add a + inside the first
# group because we're looking for one or more.

# /\b([b-df-hj-np-tv-z]+)(\w+)/i
# You can also tighten up how to find a consonant. Rather than looking for one, you can look
# for anything that's not a vowel: [^aeiou].

# /\b([^aeiou]+)(\w+)/i