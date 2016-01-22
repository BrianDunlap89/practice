require 'pry'

File.open('test-lines.rb', 'r') {|file| @text = file.read} 

times = @text.each_line do |line|
  time.split
  binding.pry
end