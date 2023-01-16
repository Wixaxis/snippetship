class ConnectCommandsToTools < ActiveRecord::Migration[7.0]
  def change
    add_reference :commands, :tool, foreign_key: true
  end
end
