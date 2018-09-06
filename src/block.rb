# ruby 块，使用yield 调用与方法同名的块

def block_1
  puts 'this is method'
  yield
  puts 'you will be back to method'
  yield
end

block_1 {
  puts "block"
}


def block_2
  x = 20
  yield x
end

block_2 {
    |x|
  puts "x is #{x}"

}

BEGIN{
  puts "called before all codes"
}
END{
  puts "called before all codes"
}