# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170710131331) do

  create_table "before_and_afters", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "before_and_after_order"
    t.date     "date"
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "title"
    t.integer  "pictureable_id"
    t.string   "pictureable_type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "picture_order"
    t.text     "description"
  end

  create_table "portfolio_sections", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "description"
    t.string   "menu_picture"
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "sub_category_id"
    t.string   "title"
    t.text     "description"
    t.string   "item_number"
    t.string   "size"
    t.text     "materials"
    t.boolean  "recent"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "project_order"
    t.index ["sub_category_id"], name: "index_projects_on_sub_category_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.integer  "portfolio_section_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "sub_category_order"
    t.index ["portfolio_section_id"], name: "index_sub_categories_on_portfolio_section_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
