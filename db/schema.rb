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

ActiveRecord::Schema.define(version: 20141209111937) do

  create_table "admin_users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins_users_subgenre_joins", force: true do |t|
    t.integer  "admin_user_id"
    t.integer  "subgenre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins_users_subgenres", force: true do |t|
    t.integer  "admin_user_id"
    t.integer  "subgenre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.integer  "subgenre_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "books", ["subgenre_id"], name: "index_books_on_subgenre_id", using: :btree

  create_table "genres", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "joins", force: true do |t|
    t.integer  "admin_user_id"
    t.integer  "subgenre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "joins", ["admin_user_id", "subgenre_id"], name: "index_joins_on_admin_user_id_and_subgenre_id", using: :btree

  create_table "songs", force: true do |t|
    t.integer  "subgenre_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "songs", ["subgenre_id"], name: "index_songs_on_subgenre_id", using: :btree

  create_table "subgenres", force: true do |t|
    t.string   "name"
    t.integer  "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subgenres", ["genre_id"], name: "index_subgenres_on_genre_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
