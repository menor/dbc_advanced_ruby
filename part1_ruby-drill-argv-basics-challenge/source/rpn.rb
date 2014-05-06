def rpn
  string = ARGV.join(' ')
  while string.include?(' ')
    string.sub!(/(-?\d+)\s(-?\d+)\s([\+\-\*])/) { # (Negative sign? Number) Space (Negative sign? Number) Space (one of those +-*)
      $1.to_i.send($3, $2.to_i) # The result from this SUBSTITUTES the entire match
    }
  end #while ends
  puts string.to_i # We need a number, not a string
end

rpn