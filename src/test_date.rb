require 'date'

# Time cases
time = Time.new
puts time.to_s
puts Time.now
puts time.inspect
puts "year: #{time.year}"
puts "month: #{time.mon}"
puts "day: #{time.day}"
puts "hour: #{time.hour}"
puts "minute: #{time.min}"
puts "seconds: #{time.sec}"
puts "microseconds: #{time.usec}" # 微秒
encoder = Encoding::Converter.new("gbk", "utf-8")
# encoder.convert time.zone 使用编码器转换字符编码
puts "Zone: #{time.zone.encode 'utf-8', 'gbk'}" # 时区,默认编码是GBK,需要进行转码

# 本地时间标注化,支持从年开始到微秒的变长参数
puts Time.local(2018)
puts Time.local(2018, 02)
#"..."
puts Time.local(2012, 2, 9, 19, 56, 8, 35394)
#puts Time.local(23 , 34, 3, 4, 5, 2023, 0, 0, false, 0)
#
# 获取 time 中所有组件组成的数组[sec,min,hour,day,month,year,wday,yday,isdst,zone]
#
t_arr = time.to_a
# for i in t_arr
#   if i.class == String
#     puts encoder.convert i
#     next
#   end
#   puts i
# end

# UTC time
#

# ruby 中使用 * 将数组转换为参数， 使用&将 proc 或者lambda 转换为块
utc_time = Time.utc(*t_arr)
puts utc_time

# 获取自纪元起当前时间秒数
seconds = Time.now.to_i
puts seconds
time = Time.at seconds
puts
# time 的加减均是在秒的基础上进行

puts(Time.now() - 100)

# dateTime cases
#

datetime1 = Date.new
puts datetime1
puts time.strftime('%Y-%m-%d %H:%M:%S %b')

datetime2 = Date.new +1
puts datetime2



