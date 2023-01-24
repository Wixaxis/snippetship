# frozen_string_literal: true

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
require 'rails_helper'

RSpec.describe Tool, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
