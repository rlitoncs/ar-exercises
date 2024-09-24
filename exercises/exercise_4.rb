require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

#Add 3 new stores
Store.create(name:"Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name:"Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name:"Yaletown", annual_revenue: 4300000, mens_apparel: true, womens_apparel: true)


#Stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)
for @store in @mens_stores do
  puts "#{@store.name}, #{@store.annual_revenue}"
end

# Stores that carry women's apprel and are generating less than $1M in annual revenue
@stores = Store.where(womens_apparel: true).where("annual_revenue < 1000000")
puts @stores