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
#
# Indexes
#
#  index_projects_on_project_tools_id  (project_tools_id)
#
# Foreign Keys
#
#  fk_rails_...  (project_tools_id => project_tools.id)
#
class Project < ApplicationRecord
  has_many :project_tools
  has_many :tools, through: :project_tools

  def menu
    tools.map(&:menu)
  end
end
