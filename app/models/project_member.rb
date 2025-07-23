class ProjectMember < ApplicationRecord
  belongs_to :project
  belongs_to :user

  # Roles
  enum role: { member: 0, admin: 1, viewer: 2 }

  # Validations
  validates :project_id, uniqueness: { scope: :user_id, message: "このユーザーは既にこのプロジェクトのメンバーです" }
  validates :role, presence: true
end
