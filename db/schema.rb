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

ActiveRecord::Schema.define(version: 20200228180344) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "community_efforts", force: :cascade do |t|
    t.integer  "resume_id"
    t.string   "description"
    t.string   "date"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["resume_id"], name: "index_community_efforts_on_resume_id", using: :btree
  end

  create_table "educations", force: :cascade do |t|
    t.integer  "resume_id"
    t.string   "degree"
    t.string   "department"
    t.string   "institution"
    t.string   "year"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["resume_id"], name: "index_educations_on_resume_id", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "resume_id"
    t.string   "title"
    t.string   "company_name"
    t.string   "location"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "team_name"
    t.string   "url"
    t.text     "highlights",   default: [],              array: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["resume_id"], name: "index_jobs_on_resume_id", using: :btree
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.text     "summary"
    t.string   "website"
    t.string   "github"
    t.string   "stack_overflow"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "skillsets", force: :cascade do |t|
    t.integer  "resume_id"
    t.string   "title"
    t.string   "skills",     default: [],              array: true
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["resume_id"], name: "index_skillsets_on_resume_id", using: :btree
  end

  create_table "startups", force: :cascade do |t|
    t.integer  "resume_id"
    t.string   "title"
    t.string   "company_name"
    t.string   "location"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "team_name"
    t.string   "url"
    t.text     "highlights",   default: [],              array: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["resume_id"], name: "index_startups_on_resume_id", using: :btree
  end

end
