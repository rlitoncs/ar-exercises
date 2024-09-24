class Store < ActiveRecord::Base
  #Store name
  validates :name, presence:true, length: { minimum: 3 }
  
  validates :annual_revenue, presence: true, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }

  validate :apparel_must_exist

  has_many :employees

  def apparel_must_exist
    unless mens_apparel || womens_apparel
      errors.add(:apparel, "at least one apparel should exist")
    end
  end
end
