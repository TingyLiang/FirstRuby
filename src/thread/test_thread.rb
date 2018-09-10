# ruby的线程，无需调用启动，new时直接启动线程,fork,start 都可以创建一个线程
# 线程本身类似hash 可以用thread["变量名"]的方式设置线程变量

puts 'test thread...'

t1 = Thread.new {
  run
}

def run
  puts 'starting the thread...'
  5.times do |i|
    puts "the #{i + 1}th loop in thread1"
    sleep(1)
    Thread.current['counter'] = i
  end
  puts 'end thread'
end

# 不能在run方法之后调用join，此时会抛出异常
t1.join
puts t1['counter'] # 获取线程的局部变量
t2 = Thread.fork {
  puts 'starting thread by fork()..'
  run}
t2.join

t3 = Thread.start {
  puts 'starting thread by start()..'
  run
}
t3.join


