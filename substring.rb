def substring (str2, dict)
 str = str2.downcase
 h = Hash.new(0)
 str_len = str.length
 
 dict.each do |words|
   word = words.downcase
   word_end = word.length-1
   
   if ((str_len) > word_end)
     i = 0
	 r = word_end
	 while (r < str_len)
	   match = true
	   q=i
	   while(q<=r)
	     if(str[q] != word[q-i])
		   match = false
		   break
		 end
		 q+=1
	   end#end while
	   if (match)
	     h[word] += 1
	   end# end if
	   i+=1
	   r+=1
	 end#end while
   end#end if
   
 end#end each
 return h
end#end substring

#test cases
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substring("below", dictionary)
puts substring("Howdy partner, sit down! How's it going?", dictionary)