def bubblesort (arr)
  swapped = true
  while(swapped)
    swapped = false
	i = 0
	while(i < (arr.length - 1))
	  if(arr[i] > arr[i+1])
	    swapped = true
		temp = arr[i+1]
		arr[i+1] = arr[i]
		arr[i] = temp
	  end# end if
	  i+=1
	end# inner while
  end# outer while
  return arr
end#end bubblesort


def bubble_sort_by (arr)
  i = 0
  len = arr.length
  while (i < len -1)
    comp = yield(arr[i], arr[i+1])
	if (comp > 0)
	  arr[i], arr[i+1] = arr[i+1], arr[i]
	end#end if
    i+=1
  end#end while
  return arr
end#end bubble_sort_by

puts (bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end).inspect
	
puts bubblesort([4,3,78,2,0,2]).inspect