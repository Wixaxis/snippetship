# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_17_181345) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commands", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tool_id"
    t.string "description"
    t.index ["tool_id"], name: "index_commands_on_tool_id"
  end

  create_table "project_tools", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "tool_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_tools_on_project_id"
    t.index ["tool_id"], name: "index_project_tools_on_tool_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "folder_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_tools_id"
    t.index ["project_tools_id"], name: "index_projects_on_project_tools_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.string "cli_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_tools_id"
    t.index ["project_tools_id"], name: "index_tools_on_project_tools_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "commands", "tools"
  add_foreign_key "projects", "project_tools", column: "project_tools_id"
  add_foreign_key "tools", "project_tools", column: "project_tools_id"
end
