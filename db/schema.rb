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

ActiveRecord::Schema.define(version: 20170329202914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.string   "cohort_name",    null: false
    t.string   "pic_url",        null: false
    t.string   "round_status",   null: false
    t.datetime "date",           null: false
    t.integer  "passing_number", null: false
    t.integer  "teams_total",    null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "pitches", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "blurb",      null: false
    t.string   "tech_stack", null: false
    t.integer  "author_id",  null: false
    t.integer  "day_id",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.integer  "round_number", null: false
    t.integer  "day_id",       null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                      null: false
    t.string   "last_name",                       null: false
    t.boolean  "is_admin",        default: false
    t.string   "password_digest"
    t.integer  "team_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "voter_id",               null: false
    t.integer  "day_id",                 null: false
    t.integer  "pitch_id",               null: false
    t.integer  "round_id",               null: false
    t.integer  "points",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
