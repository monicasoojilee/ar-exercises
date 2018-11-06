require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ActiveRecord::Base
    validates :first_name, :last_name, presence: true
    validates :hourly_rate, numericality: { greater_than: 40 }
    validates :hourly_rate, numericality: { less_than: 200 }
    validates_associated :store
end

class Store < ActiveRecord::Base    
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { greater_than: 0 }
    validates_associated :employees
    validate :mens_or_womens_apparel

    def mens_or_womens_apparel
        if !mens_apparel && !womens_apparel
            errors.add(:mens_or_womens_apparel, "must carry mens and/or womens apparel")
        end
    end

end

print "Let's create your store! Start with a name: "
input_name = $stdin.gets.chomp
@user_store = Store.create name:input_name, annual_revenue: 2000000, womens_apparel: true

if @user_store.errors.any?
    @user_store.errors.each do |attribute, message|
    puts attribute
    puts message
    end
end
