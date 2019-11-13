class Person < ApplicationRecord
  # Associations
  has_many :lessons
  has_many :lesson_payments
  has_one :lesson_details

  # validates :first_name, :last_name, presence: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def contact_info
    "Phone: #{self.phone}  |  Email: #{self.email}"
  end
end
