require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Find store
@store1 = Store.find(1)
@store2 = Store.find(2)

# Update Store
@store1.update(name: "Bobby Junior") # update name

#alternative:
#@store1.name = "Bobby Junior"
#@store1.save

