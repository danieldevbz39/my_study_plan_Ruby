def counting_sort(array)
	## step 1
	max_value = array.max
  
	## step 2
	count_array = Array.new(max_value - 1, 0)
  
	## step 3
	array.each { |n| count_array[n] += 1 }
  
	## step 4
	k = 1
	
	while k < count_array.size
	  count_array[k] += count_array[k - 1]
  
	  k += 1
	end
	
	## step 5
	s = array.size - 1
	
	## step 6
	output_array = []
  
	while s >= 0
	  ## step 7
	  output_array[count_array[array[s]] - 1] = array[s]
	  
	  ## step 8
	  count_array[array[s]] -= 1
  
	  s -= 1
	end
  
	output_array
  end