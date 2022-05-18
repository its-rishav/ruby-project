require 'fileutils'


file_content = Array.new
File.open("input_project_1.txt").each do |line|
    file_content << line.split("\n").first.to_i
end

array_of_sum = []
arr_count = file_content.count
file_content.each_with_index do |item, index|
    break if index == arr_count - 2
    array_of_sum << file_content[index] + file_content[index+1] + file_content[index+2]
end
increase_count = 0
puts "Array: #{array_of_sum.compact!} times."

array_of_sum.each_with_index do |ele, index|
    break if index == arr_count - 1
    # puts "#{array_of_sum[index + 1].class}"
    if array_of_sum[index + 1] != nil && array_of_sum[index + 1] > ele
        increase_count+=1
    end
end

puts "Depth increase: #{increase_count} times."