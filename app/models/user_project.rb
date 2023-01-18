# == Schema Information
#
# Table name: user_projects
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  project_id :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_user_projects_on_project_id  (project_id)
#  index_user_projects_on_user_id     (user_id)
#
class UserProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
end
