File.open(ARGV[0], 'r') {|file| @text = file.read} 

require 'time'

sorted_times = []
lines = @text.each_line do |line|
  times = line.split(" ").map(&:chomp)
  times = times.map {|timestamp| Time.parse(timestamp).strftime("%H:%M:%S")}.sort.reverse
  sorted_times.push(times)
end
sorted_times.each do |times|
  times = times.join(" ")
  puts times
end
