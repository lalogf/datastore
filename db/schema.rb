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

ActiveRecord::Schema.define(version: 20141230053701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analisis_mensuals", force: true do |t|
    t.integer  "hto"
    t.integer  "hb"
    t.integer  "peso_pre"
    t.integer  "peso_post"
    t.integer  "urea_pre"
    t.integer  "urea_post"
    t.integer  "urr"
    t.integer  "ktv"
    t.integer  "tgp"
    t.integer  "tgo"
    t.string   "month"
    t.integer  "paciente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", force: true do |t|
    t.string   "primer_nombre"
    t.string   "segundo_nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.date     "nacimiento"
    t.string   "dni"
    t.string   "direccion"
    t.string   "distrito"
    t.string   "provincia"
    t.string   "departamento"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
