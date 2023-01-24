# frozen_string_literal: true

class AddBasicFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :username, :string
    end
  end
end
