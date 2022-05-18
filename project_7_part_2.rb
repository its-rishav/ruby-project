require "fileutils"
file_content = Array.new
File.open("input_project_7.txt").each do |line|
    file_content = line.split(",").map(&:to_i).sort
end
     
sum = 0.0

for i in file_content
    sum += i
end
size = file_content.count
val  = sum/size
p val.ceil
p val.floor

sumC = 0
sumF = 0
for i in file_content 
    j = (val.ceil - i).abs
    t = j*(j+1)/2
    sumC += t
    
    k = (val.floor - i).abs
    t = k*(k+1)/2
    sumF += t
end
if sumC < sumF 
    puts "sum: #{sumC}"
else
    puts "sum: #{sumF}"
end
 
