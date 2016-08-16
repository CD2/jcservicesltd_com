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

ActiveRecord::Schema.define(version: 20160807163647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cd2_cms_blogs", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd2_cms_enquiries", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd2_cms_images", force: :cascade do |t|
    t.string   "image"
    t.string   "alt"
    t.string   "caption"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.boolean  "featured_image", default: false
    t.integer  "order"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "cd2_cms_page_infos", force: :cascade do |t|
    t.string   "title"
    t.text     "meta_description"
    t.string   "url_alias"
    t.boolean  "published",        default: true
    t.boolean  "protected",        default: false
    t.integer  "page_id"
    t.string   "page_type"
    t.integer  "author_id"
    t.boolean  "home_page",        default: false
    t.integer  "order"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "cd2_cms_pages", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.string   "layout"
    t.boolean  "in_menu"
    t.string   "menu_item"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd2_cms_projects", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd2_cms_service_projects", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd2_cms_services", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd2_cms_setting_type_images", force: :cascade do |t|
    t.string   "value"
    t.string   "default"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd2_cms_setting_type_strings", force: :cascade do |t|
    t.string   "value"
    t.string   "default"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd2_cms_settings", force: :cascade do |t|
    t.string   "key"
    t.string   "data_type"
    t.integer  "data_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd2_cms_testimonials", force: :cascade do |t|
    t.text     "quote"
    t.string   "author"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd2_cms_users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.boolean  "cd2admin",               default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["email"], name: "index_cd2_cms_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_cd2_cms_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  end

end
