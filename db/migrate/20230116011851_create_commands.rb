# frozen_string_literal: true

class CreateCommands < ActiveRecord::Migration[7.0]
  def change
    create_table :commands do |t|
      t.string :title
      t.text :body
      t.string :tags

      t.timestamps
    end
  end
end
