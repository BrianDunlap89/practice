require 'pry'

File.open('test-lines.rb', 'r') {|file| @text = file.read} 

lines = @text.each_line do |line|
  variables = line.split
  @match_seq = variables[0]
  margin_err = variables[1].to_i
  main_seq = variables[2]
  binding.pry
  perfect_seq = []
  acceptable_seq = []
  
  segments = main_seq.split(//).to_a
  segments.each_with_index do |segment, index|
    binding.pry

    group = []
    until group.count == @match_seq.length
      digit = segments[index]
      group.push(digit)
      index += 1
    end

    difference = group - @match_seq.split(//)
    if group.join == @match_seq
      binding.pry
      perfect_seq << group
    elsif
      difference.count <= margin_err
      binding.pry
      acceptable_seq << group
    end
  end
  binding.pry
  acceptable_seq.sort!.reject! {|trio| trio.include?(nil)}
  final_seq = perfect_seq.concat(acceptable_seq)
  binding.pry
end