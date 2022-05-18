require 'fileutils'
file_content = Hash.new(0)
File.open("input_project_6.txt").each do |line|
    file_content = line.split(",").map(&:to_i).sort.tally
end
puts "initial content #{file_content}"

(1..80).each do |time|
    new_header = file_content.keys.map{|key| key -= 1; key}
    file_content = new_header.zip(file_content.values).to_h
    file_content.default = 0
    file_content[6] += file_content[-1]
    file_content[8] = file_content[-1]
    file_content[-1] = 0
end
puts "#{file_content}"
puts "#{file_content.values.sum}"