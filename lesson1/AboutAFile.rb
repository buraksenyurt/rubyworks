#About a file
statistics=File.stat('Songs.txt')
puts "Last Wrote time #{statistics.mtime}"
sleep(2)
puts "Last read time #{statistics.atime}"
sleep(2)
puts "Executable? #{statistics.executable?}"
sleep(2)
puts "File type is '#{statistics.ftype}'"
sleep(2)
puts "File size is #{statistics.size}"
sleep(2)
puts "All informations \n #{statistics.inspect}"
