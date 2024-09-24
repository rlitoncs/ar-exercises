require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

new_employee = @store1.employees.create(hourly_rate: 300)
new_store = Store.create


puts new_employee.errors.full_messages
puts new_store.errors.full_messages
#Alternative way
# new_emp = Employee.new
# puts new_emp.save