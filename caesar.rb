def caesar (str, key)
  c_arr = str.chars
  s_key = key % 26
  c_arr.map! do |letter|
    ordinal = letter.ord
	if((ordinal <= 122 && ordinal >= 97) || (ordinal <=90 && ordinal >= 65))
	  ordinal += s_key
	  if (ordinal > 122 || (ordinal > 90 && (ordinal - s_key) <= 90))
	    ordinal -= 26
	  elsif(ordinal < 65 || (ordinal < 97 && (ordinal + s_key) >= 97))
	    ordinal += 26
	  end
    end	#end if
	letter = ordinal
  end# end map
  newstr = c_arr.pack('c*')
  return newstr
end#end caesar cipher

#caesar cipher test cases
puts caesar("What a string!", 5)
puts caesar("What a string!", 57)
puts caesar("What a string!", -5)
puts caesar(" What a string!", -57)