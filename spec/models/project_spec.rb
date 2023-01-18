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
require 'rails_helper'

RSpec.describe Project, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
