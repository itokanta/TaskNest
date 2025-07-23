class CreateProjectMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :project_members do |t|
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :role

      t.timestamps
    end
  end
end
