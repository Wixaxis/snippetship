# == Schema Information
#
# Table name: tools
#
#  id         :bigint           not null, primary key
#  cli_name   :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tool < ApplicationRecord
  has_many :commands

  def add_command(title, body)
    commands.create(title:, body:, tags: name)
  end

  def available_commands
    commands.map(&:title)
  end
end
