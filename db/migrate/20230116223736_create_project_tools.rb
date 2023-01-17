# frozen_string_literal: true

class CreateProjectTools < ActiveRecord::Migration[7.0]
  def change
    create_table :project_tools do |t|
      t.belongs_to :project
      t.belongs_to :tool

      t.timestamps
    end

    add_reference :projects, :project_tools, foreign_key: true
    add_reference :tools, :project_tools, foreign_key: true
  end
end
