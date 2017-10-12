def stockpicker (arr)
  start_ind = -1
  end_ind = -1
  diff = 0
  i = 0
  r = arr.length
  while (i < r)
    q = i+1
	while(q < r)
	  if((arr[q] - arr[i]) > diff)
	    diff = arr[q] - arr[i]
		end_ind = q
		start_ind = i
	  end#end if
	  q+=1
	end#end inner while
    i+=1
  end#end while
  r_arr = [start_ind, end_ind]
  return r_arr
end#end stockpicker

puts stockpicker([17,3,6,9,15,8,6,1,10])