# == Schema Information
#
# Table name: projects
#
#  id          :bigint           not null, primary key
#  folder_name :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Project < ApplicationRecord
end
