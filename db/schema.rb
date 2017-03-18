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

ActiveRecord::Schema.define(version: 20170318004440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "photo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "email"
    t.string   "logo"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "candidate_id"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["candidate_id"], name: "index_contracts_on_candidate_id", using: :btree
    t.index ["project_id"], name: "index_contracts_on_project_id", using: :btree
  end

  create_table "evaluations", force: :cascade do |t|
    t.text     "review"
    t.integer  "rating"
    t.integer  "contract_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["contract_id"], name: "index_evaluations_on_contract_id", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "position"
    t.string   "location"
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["company_id"], name: "index_jobs_on_company_id", using: :btree
  end

  create_table "links", force: :cascade do |t|
    t.string   "link_type"
    t.string   "url"
    t.text     "description"
    t.integer  "candidate_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["candidate_id"], name: "index_links_on_candidate_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "location"
    t.text     "objective"
    t.text     "summary"
    t.integer  "candidate_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["candidate_id"], name: "index_profiles_on_candidate_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.text     "description"
    t.string   "location"
    t.string   "compensation"
    t.integer  "company_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["company_id"], name: "index_projects_on_company_id", using: :btree
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "file"
    t.integer  "candidate_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["candidate_id"], name: "index_resumes_on_candidate_id", using: :btree
  end

  create_table "tokens", force: :cascade do |t|
    t.string   "characters"
    t.integer  "candidate_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["candidate_id"], name: "index_tokens_on_candidate_id", using: :btree
  end

  add_foreign_key "contracts", "candidates"
  add_foreign_key "contracts", "projects"
  add_foreign_key "evaluations", "contracts"
  add_foreign_key "jobs", "companies"
  add_foreign_key "links", "candidates"
  add_foreign_key "profiles", "candidates"
  add_foreign_key "projects", "companies"
  add_foreign_key "tokens", "candidates"
end
