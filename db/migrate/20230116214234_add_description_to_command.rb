# frozen_string_literal: true

class AddDescriptionToCommand < ActiveRecord::Migration[7.0]
  def change
    add_column :commands, :description, :string
  end
end
