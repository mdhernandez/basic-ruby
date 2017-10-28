module Enumerable
  def my_each
    i = 0
	while i < self.size
	  yield(self[i])
	  i+=1
	end
	return self
  end
  
  def my_each_with_index
    i =0
	while i < self.size
	  yield(self[i], i)
	  i+=1
	end
	return self
  end
  
  def my_select
    arr = []
	self.my_each do |num|
	  if yield(num)
	  arr.push(num)
	  end
	end
	return arr
  end
  
  def my_all?
	self.my_each do |item|
	  if !yield(item)
	  return false
	  end
	end
	return true
  end
  
  def my_any?
    self.my_each do |item|
	  if yield(item)
	    return true
	  end
	end
	return false
  end
  
  def my_none?
    self.my_each do |item|
	  if yield(item)
	    return false
	  end
	end
	return true
  end
  
  def my_count
    i = 0
	while i < self.size
	i+=1
	end
	return i
  end
  
  def my_map
    arr = []
    self.my_each do |item|
	  new_item = yield(item)
	  arr.push(new_item)
	end
	return arr
  end
  
end#end Enumerable


#test cases

arr = [2, 4, 2, 3, 1]
sum = 0
arr.my_each do |r|
sum += r
end

puts "Sum = #{sum}"

arr.my_each_with_index do |value, index|
puts "Position: #{index} Value: #{value}" 
end

scoob = arr.my_select{|r| r > 1}
puts scoob.inspect

puts arr.my_any?{|r| r < 0}#false case
puts arr.my_any?{|r| r ==2}#true case

puts arr.my_all?{|r| r < 4}#false case
puts arr.my_all?{|r| r <= 4}#true case



puts arr.my_none?{|r| r > 3}#false case
puts arr.my_none? {|r| r == 7}#true case

puts arr.my_count

shaggy = arr.my_map{|r| r * 4}
puts shaggy.inspect