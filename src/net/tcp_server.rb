require 'socket'

server = TCPServer.open(18080)

while(true)
  client = server.accept
  puts client.gets
  client.puts 'message received... '
  client.close
end
