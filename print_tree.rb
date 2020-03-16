#Prints a half tree with input size
#*
#**
#***
 
puts "Enter number of stars"
x = gets.chomp.to_i
 
for i in 1..x do
 for j in 1..i do
   print "*"
 end
 puts " "
end
