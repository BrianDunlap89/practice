require 'pry'

File.open('test-lines.rb', 'r') {|file| @text = file.read}

file = @text.each_line do |line|
  line.gsub!(/\n/, " ")
  if line =~ /.+@.+\..+/i
    puts true
  else
    puts false
  end
end