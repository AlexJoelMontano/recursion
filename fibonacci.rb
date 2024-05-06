def fibs(num)
  if num == 1
     [0,1]
  else
    sum = fibs(num -1)
    sum.push(sum[sum.length-1]+sum[sum.length-2])
  end
end

puts ' '
puts "Choose an interation for the fibonacci sequence:"
input = gets.chomp.to_i
puts ' '
print "#{fibs(input)}"
