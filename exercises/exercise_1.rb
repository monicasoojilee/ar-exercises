require_relative '../setup'

puts "Exercise 1"
puts "----------"

Burnaby = Store.create annual_revenue: 300000, mens_apparel: true, womens_apparel: true
Richmond = Store.create annual_revenue: 1260000, womens_apparel: true
Gastown = Store.create annual_revenue: 190000, mens_apparel: true