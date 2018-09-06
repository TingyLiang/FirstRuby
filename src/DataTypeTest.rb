# to learn basic datatypes of ruby
#

def sum(x, y)
  x + y
end

def sum(x, y)
  x + y
end

def getRational(x, y)
  x / y

end

puts(sum(1, 2))
puts(1 + 3.0)
puts(getRational(1, 6))


# the following codes show how  to use a symbol
str1 = "a normal string"
:symbol1

puts(:symbol1.object_id)
puts(:symbol1.object_id)
puts(str1.object_id)
puts(str1.object_id)

# the following codes show how to use hash in ruby. keys and values can be different datatypes
# ruby 中hash的key value均可以是不同的数据类型
hash1 = {"k1" => "v1", "k2" => "v2", "k3" => "v3", "k4" => "v4", "k5" => "v5", "k6" => "v6"}
puts(hash1["k1"])
hash1["k2"] = 22
puts(hash1["k2"])
hash1[7] = ["123"]
puts(hash1[7])


# the following codes show how to use array  in ruby
# ruby的数组元素可以是不同的数据类型，并且不会出现访问元素越界的情况，如果越界，该值回事nil
arra = [1, 2, 3]
puts(arra[0])
arra[3] = "s"
puts(arra[3])
puts(arra[10])

puts  arra[100] == nil
puts 1 + 4


# 可以以<<符号开头指定多行字符串，后面紧跟一个结束符，则<< 和结束符之间的内容都是改字符串的内容，类似于python或者scala """ 的功能
print <<EOF
多行字符串
多行字符串
多行字符串
多行字符串
EOF









