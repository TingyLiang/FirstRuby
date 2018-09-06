puts "Opening file..."
File.open('test.txt', 'w') do |file|
  file.puts "first line \n"
  # file.write "this is the demo ruby codes to read and write a file.\n"
  file << "this is the demo ruby codes to read and write a file.\n"
  file << "end of file.\n"
end
File.open('create-first-file.txt', 'w') do |f|
  f.puts "This is Yiibai Website"
  f.write "You are reading Ruby tutorial.\n"
  f << "Please visit our website.\n"
end
puts "end creating file"

