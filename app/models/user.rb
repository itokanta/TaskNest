class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :owned_projects, class_name: 'Project', foreign_key: 'owner_id', dependent: :destroy
  has_many :project_members, dependent: :destroy
  has_many :projects, through: :project_members
end
