# frozen_string_literal: true

class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.string :cli_name

      t.timestamps
    end
  end
end
