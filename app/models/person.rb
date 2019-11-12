class Person < ApplicationRecord
  # Associations
  has_many :lessons
  has_many :lesson_payments
  has_one :lesson_details
  
end
