require 'fileutils'

position_hash = Hash["horizontal": 0, "depth": 0]
puts "postion hash: #{position_hash}"

File.open("input_project_2.txt").each_with_index do |line, index|
    line_content =  line.split("\n").first.split(" ")
    key = line_content.first
    value = line_content.last.to_i
    # puts position_hash[:horizontal]
    if key == "forward"
        position_hash[:horizontal] += value
    elsif key == "down"
        position_hash[:depth] += value
    else
        position_hash[:depth] -= value
    end
    # puts "#{key.class}, #{value.class}"
    # puts "index: #{index}"
    # break if index >= 9
end

# puts "Count of array: #{array_content}"
puts "Horizontal Position and depth are: #{position_hash}"
puts "multiplication value: #{position_hash[:horizontal] * position_hash[:depth]}"