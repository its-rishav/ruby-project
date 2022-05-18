require 'fileutils'

file_content = Array.new()
File.open("input_project_7.txt").each do |line|
    file_content = line.split(",").map(&:to_i).sort
end
puts "file_content: #{file_content}"

    size = file_content.count
    x = file_content[size / 2]
    sum = 0
    # puts "x: #{x}"
    # Calculate the minimized sum
    file_content.each do |ele|
        puts "arr i :#{ele} #{x}"
        sum += (ele - x).abs
    end
 
    # Return the required sum
    puts "sum #{sum}"