require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find(1)
puts "\nFirst Store"
p @store1

@store2 = Store.find(2)
puts "\nSecond Store"
p @store2

puts "\nFirst Store Name Change"
@store1.name = "North Vancouver"
@store1.save
p @store1