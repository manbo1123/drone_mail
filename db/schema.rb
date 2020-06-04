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

ActiveRecord::Schema.define(version: 2020_06_01_114406) do

  create_table "drone_features", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "feature_id", null: false
    t.bigint "drone_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drone_id"], name: "index_drone_features_on_drone_id"
  end

  create_table "drones", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "introduction", null: false
    t.integer "price", null: false
    t.integer "area", null: false
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "size_id", null: false
    t.integer "weight_id", null: false
    t.integer "load_id", null: false
    t.integer "space_id", null: false
    t.integer "speed_id", null: false
    t.bigint "owner_id", null: false
    t.bigint "buyer_id"
    t.bigint "maker_id"
    t.bigint "station_id"
    t.index ["buyer_id"], name: "fk_rails_1a54c65bae"
    t.index ["maker_id"], name: "fk_rails_337c6537bd"
    t.index ["owner_id"], name: "index_drones_on_owner_id"
    t.index ["station_id"], name: "fk_rails_2e2d633d02"
  end

  create_table "imgs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "src", null: false
    t.bigint "drone_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drone_id"], name: "index_imgs_on_drone_id"
  end

  create_table "makers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "introduction"
    t.string "avater"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "stations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "ancestry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nickname", null: false
    t.string "family_name", null: false
    t.string "first_name", null: false
    t.string "family_name_kana", null: false
    t.string "first_name_kana", null: false
    t.integer "phone_number"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "drone_features", "drones"
  add_foreign_key "drones", "makers"
  add_foreign_key "drones", "stations"
  add_foreign_key "drones", "users", column: "buyer_id"
  add_foreign_key "drones", "users", column: "owner_id"
  add_foreign_key "imgs", "drones"
  add_foreign_key "profiles", "users"
end
