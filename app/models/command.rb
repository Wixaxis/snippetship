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
#
class Command < ApplicationRecord
end
