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

ActiveRecord::Schema.define(version: 20170319213714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "email"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.text     "review"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "author_id"
    t.integer  "subject_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "position"
    t.string   "location"
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "compensation"
    t.string   "job_type"
    t.index ["company_id"], name: "index_jobs_on_company_id", using: :btree
  end

  create_table "links", force: :cascade do |t|
    t.string   "link_type"
    t.string   "url"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_links_on_user_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "location"
    t.text     "objective"
    t.text     "summary"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_resumes_on_user_id", using: :btree
  end

  create_table "tokens", force: :cascade do |t|
    t.string   "characters"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "admin_token", default: false
    t.index ["user_id"], name: "index_tokens_on_user_id", using: :btree
  end

  create_table "uploads", force: :cascade do |t|
    t.string   "photo"
    t.string   "title"
    t.string   "destination_url"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_uploads_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "photo"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "company_id"
    t.boolean  "admin_status",    default: false
  end

  add_foreign_key "jobs", "companies"
  add_foreign_key "links", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "tokens", "users"
end
