require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@totalrevenue = Store.sum(:annual_revenue);
puts "\nTotal Revenue"
p @totalrevenue

@averagerevenue = @totalrevenue / Store.count
puts "\nAverage Revenue"
p @averagerevenue