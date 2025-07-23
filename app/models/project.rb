class Project < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :project_members, dependent: :destroy
  has_many :members, through: :project_members, source: :user

  # Validations
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, length: { maximum: 10000 }
end
