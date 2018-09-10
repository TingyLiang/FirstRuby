require 'socket'
hostname = 'localhost'
port = 18080
socket = TCPSocket.open(hostname,port)

socket.puts 'hi,server.'
while line = socket.gets
  puts line.chomp
end

socket.close