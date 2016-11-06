# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161106055505) do

  create_table "beats", force: :cascade do |t|
    t.integer  "measure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chords", force: :cascade do |t|
    t.integer  "alternate_root_id"
    t.integer  "number"
    t.string   "quality"
    t.string   "modifications"
    t.integer  "add"
    t.integer  "subtract"
    t.integer  "suspend"
    t.integer  "beat_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "measures", force: :cascade do |t|
    t.integer  "num_beats"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roots", force: :cascade do |t|
    t.integer  "chord_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.string   "composer"
    t.string   "transcriber"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
