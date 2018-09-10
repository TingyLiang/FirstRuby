@cv = ConditionVariable.new
@flag = Mutex.new
@count = 0

t1 = Thread.new {
  @flag.synchronize {
    @cv.wait(@flag)
    @count -= 1
    puts "count is #{@count} in t1"

  }
}

t2 = Thread.new {
  @flag.synchronize {
    @cv.signal()
    @count += 1
    puts "count is #{@count} in t2"

  }
}
sleep 0.5
# 有时 为防止主线程执行过快在join时还未生成线程，需要sleep一段时间 否则会报 in `join': No live threads left. Deadlock?
# t1.join
# t2.join