class Employee < ActiveRecord::Base
  #validating first name
  validates :first_name, presence: true

  #validating last name
  validates :last_name, presence: true

  #validates hourly_rate
  validates :hourly_rate, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 40,
    less_than_or_equal_to: 200
  }

  validates :id, presence: true

  belongs_to :store
end
