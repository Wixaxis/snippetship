# frozen_string_literal: true

# == Schema Information
#
# Table name: projects
#
#  id               :bigint           not null, primary key
#  folder_name      :string
#  name             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  project_tools_id :bigint
#  user_projects_id :bigint
#
# Indexes
#
#  index_projects_on_project_tools_id  (project_tools_id)
#  index_projects_on_user_projects_id  (user_projects_id)
#
# Foreign Keys
#
#  fk_rails_...  (project_tools_id => project_tools.id)
#  fk_rails_...  (user_projects_id => user_projects.id)
#
class Project < ApplicationRecord
  has_many :project_tools
  has_many :tools, through: :project_tools

  has_many :user_projects
  has_many :users, through: :user_projects

  has_many :owners, through: :user_projects, class_name: 'User'

  def menu
    tools.map(&:menu)
  end

  def self.create_with_owner(name, folder_name, user)
    ActiveRecord::Base.transaction do
      project = Project.create(name:, folder_name:)
      user.projects << project
      user.save!
      UserProject.where(user_id: user.id, project_id: project.id).update(owner: true)
    end
  end
end
