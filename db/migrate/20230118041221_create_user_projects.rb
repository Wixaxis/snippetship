class CreateUserProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :user_projects do |t|
      t.belongs_to :project
      t.belongs_to :user

      t.timestamps
    end
    add_reference :projects, :user_projects, foreign_key: true
    add_reference :users, :user_projects, foreign_key: true
  end
end
