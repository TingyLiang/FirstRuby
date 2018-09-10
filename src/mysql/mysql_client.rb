require 'mysql2'

begin
  client = Mysql2::Client.new(:host => '172.17.171.104', :username => 'hive', :port => 3306, :database => 'intelli_accquery', :password => 'hive')
  sql = 'select * from cache_record'
  res = client.query(sql)
  # stat = Statement.new
  # res1 = stat.execute(sql)
  puts res.count

  res.each do |item|
    puts item['data_id'].to_s + '- d_id'
  end

  # puts res1.count
ensure
  client.close if client
end

