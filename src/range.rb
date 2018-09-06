# range
# ..指定的范围包含起点和终点
range = (-1..3).to_a
puts range.include? 3
puts ('a'..'e').to_a.to_s
ans = range.reject {|x| x < 0} # 过滤
puts "---------iterates--------------"
range.each do |x|
  puts x
end
puts "-----------filter--------------"
puts ans


puts "-------------------------"

# ... 指定的范围包含起点和但不包含终点
puts (-1...5).to_a.to_s
puts ('a'...'e').to_a.to_s # a b c d

# 范围作为条件表达式
#

budget = 1000

case budget
when 0...100
  endputs 'low'
when 100..1000
  puts 'middle'
else
  puts 'not support'
end
# 右侧范围值大于左侧范围值则不会返回任何值 eg 5..0
# 要返回反转范围，需要使用reverse
puts "-----------reverse range--------------"
puts (0..5).to_a.reverse
puts (0..3).to_a.to_s

#范围作为间隔检测
if ((1..10) === 5)
  puts "5 在 (1..10)"
end