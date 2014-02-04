def pig_latin_word(word)
  unless word =~ /^[aeiou]/
    latin_word = word.sub(/^([^aeiou]+)(.+)/) { $2 + $1 + 'ay'  }
  end
  latin_word
end

def pig_latin(sentence)
  words = (sentence.is_a? String) ? sentence.split(' ') : sentence
  sentence.map! { |word| pig_latin_word(word) }
  puts words.join(' ')
end

pig_latin ARGV

# Alternatively:
# def pig_latin()
#   words = ARGV.map { |word| pig_latin_word(word) }
#   puts words.join(' ')
# end

# pig_latin