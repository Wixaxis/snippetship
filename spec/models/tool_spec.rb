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
require 'rails_helper'

RSpec.describe Tool, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
