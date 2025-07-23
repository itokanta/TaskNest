class Project < ApplicationRecord
  belongs_to :user

  # Validations
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, length: { maximum: 10000 }
end
