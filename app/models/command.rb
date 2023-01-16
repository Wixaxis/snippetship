# == Schema Information
#
# Table name: commands
#
#  id         :bigint           not null, primary key
#  body       :text
#  tags       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tool_id    :bigint
#
# Indexes
#
#  index_commands_on_tool_id  (tool_id)
#
# Foreign Keys
#
#  fk_rails_...  (tool_id => tools.id)
#
class Command < ApplicationRecord
  belongs_to :tool

  def build_command
    "cd (User project path)/(project name) && #{tool.cli_name} #{body}"
  end
end
