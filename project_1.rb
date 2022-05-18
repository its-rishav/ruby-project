require 'fileutils'


file_content = Array.new
File.open("input_project_1.txt").each do |line|
    file_content << line
end
# puts file_content.first
# puts ele, index
# puts "#{file_content[index+1]} #{ele}"
# break

arr_count = file_content.count
increase_count = 0
file_content.each_with_index do |ele, index|
    break if index == arr_count - 1
    if file_content[index + 1] >= ele
        increase_count+=1
    end
end

puts "Depth increase: #{increase_count} times."