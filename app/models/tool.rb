# == Schema Information
#
# Table name: tools
#
#  id               :bigint           not null, primary key
#  cli_name         :string
#  name             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  project_tools_id :bigint
#
# Indexes
#
#  index_tools_on_project_tools_id  (project_tools_id)
#
# Foreign Keys
#
#  fk_rails_...  (project_tools_id => project_tools.id)
#
class Tool < ApplicationRecord
  has_many :commands
  has_many :project_tools
  has_many :projects, through: :project_tools

  def add_command(title, body, description)
    commands.create(title:, body:, tags: name, description:)
  end

  def menu
    commands.map { |com| "#{com.title} - #{com.description}" }
  end

  def build_command(command)
    "cd (User project path)/#{project.folder_name} && #{command.build_command}"
  end
end
