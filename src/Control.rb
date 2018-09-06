# this file shows how to conduct condition control
# if else
#
x = 23
if x > 0
  puts 'x is positive'
elsif x.zero?
  puts "x is 0"
else
  puts "x is negative"
end

# case when
day = "Mon."
case day
when "Mon."
  puts "matched."
else
  puts "unknown"
end

# puts 'pls input a number:'
# num = gets.chomp.to_i

# for loop
for i in 0..4 do
  puts i
end

hash1 = {"k1" => "v1", "k2" => "v2", "k3" => "v3", "k4" => "v4", "k5" => "v5", "k6" => "v6"}

# 遍历hash表时，遍历的每个结果是一个由 k v组成的数组，key是下标0的元素，value 是下标为1的元素
for i in hash1 do
  puts i[1]
end

arra = [1, 2, 3]
for i in arra do
  puts i
end

# while loop
i = 0
while i < 10
  puts i
  i += 1
end


# do while loop

i = 20
loop do
  if i.zero?
    puts "i is 0 now..."
    break
  end
  i -= 1
end

# ruby 没有continue，使用next 代替
# until loop, break until the condition is true

i = 10
until i == 0
  puts i
  i -= 1
end

# retry & redo

n = 0
# begin  end 块用于处理异常
begin
  puts 'Trying to do something?'
  raise 'oops'
rescue => ex
  puts ex
  n += 1
  retry if n < 3
end
puts "Ok, I give up"

=begin
多行注释处
多行注释处
多行注释处
多行注释处
=end

