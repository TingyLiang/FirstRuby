# ruby 的迭代器实例
#
array = (1..5).to_a
# each 迭代器
# each 迭代器总是与一个块关联
puts "==========each========"
array.each do
|x|
  puts x + 1
end

# collect 迭代器
puts "==========collect========"
b = array.collect {|x| x * 2}
puts b

# times 迭代器
#
COUNT = 5
puts "==========times========"
COUNT.times do |c|
  puts c
end

#upto 迭代从x到y 的范围，包括x和y
puts "==========upto========"

0.upto COUNT do
  COUNT
  puts COUNT
end

# step 迭代器用于在跳过范围时迭代，指定迭代步长
puts "==========step========"
(0..100).step(10) do |x|
  puts x
end

# each_line迭代器用于迭代字符串中的行
#
#
puts "==========each_line========"
"abc-
123
456
789-".each_line do |line|
  puts line
end