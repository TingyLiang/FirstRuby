# 使用Queue进行线程同步的demo,Queue无需考虑线程同步问题
# 也可使用SizeQueue对队列长度进行限制

puts 'testing thread sync with Queue'
queue = Queue.new

class Producer < Thread
end

class Consumer < Thread
end

t1 = Producer.new {
  puts "before producing, length: #{queue.length}"
  queue << queue.length() + 1
  puts "after producing, length: #{queue.length}"

}
t1.join

t2 = Consumer.new {
  puts "before consuming, length: #{queue.length}"
  queue.pop
  puts "after consuming, length: #{queue.length}"
}
t2.join