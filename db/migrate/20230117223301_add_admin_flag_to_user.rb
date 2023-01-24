# frozen_string_literal: true

class AddAdminFlagToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :bool, default: false
  end
end
