# frozen_string_literal: true

# == Schema Information
#
# Table name: user_projects
#
#  id         :bigint           not null, primary key
#  owner      :boolean          default(FALSE)
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
require 'rails_helper'

RSpec.describe UserProject, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
