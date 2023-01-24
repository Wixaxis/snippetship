# frozen_string_literal: true

class AddOwnershipToUserProjectRelation < ActiveRecord::Migration[7.0]
  def change
    add_column :user_projects, :owner, :bool, default: false
  end
end
