# 1. 线程共享数据
# 使用mutex，当多线程需要访问同一个数据时使用 mutex 加锁

@count = 5
@mutex = Mutex.new
@sleeps = [] # 记录处于休眠等待的线程

6.times do
  t = Thread.new {
    # puts 'this is thread1..'

    if (@count == 0)
      puts 'count is 0 in thread 1, waiting...'
      Thread.stop # 使线程进入休眠状态
      puts "now back to thread1 ,count is #{@count}"
      @mutex.lock
      @count -= 1
      @mutex.unlock
      puts "count -1 ,count is #{@count}"
    else
      @mutex.lock
      @count -= 1
      @mutex.unlock
      puts "count is #{@count} in thread1."
    end

  }
  sleep 1
  if (t.status != 'sleep')
    t.join
  else
    @sleeps.push(t)
  end
end


2.times do
  t = Thread.start {
    @mutex.lock
    @count += 1
    puts "count is #{@count} in thread2."
    tmp = @sleeps.shift
    if (!tmp.nil?)
      tmp.run # 唤醒线程
    end
    @mutex.unlock
  }
  t.join
end


sleep(10)