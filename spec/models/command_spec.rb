# frozen_string_literal: true

# == Schema Information
#
# Table name: commands
#
#  id          :bigint           not null, primary key
#  body        :text
#  description :string
#  tags        :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  tool_id     :bigint
#
# Indexes
#
#  index_commands_on_tool_id  (tool_id)
#
# Foreign Keys
#
#  fk_rails_...  (tool_id => tools.id)
#
require 'rails_helper'

RSpec.describe Command, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
