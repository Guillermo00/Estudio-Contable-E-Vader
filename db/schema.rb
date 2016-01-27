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

ActiveRecord::Schema.define(version: 20160125194428) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.date     "nacimiento"
    t.string   "genero"
    t.integer  "dni"
    t.integer  "cuil_cuit"
    t.integer  "telefono"
    t.string   "email"
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.integer  "monto"
    t.date     "emision"
    t.integer  "cliente_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "descripcion"
    t.integer  "persona_id"
  end

  add_index "facturas", ["cliente_id"], name: "index_facturas_on_cliente_id"
  add_index "facturas", ["persona_id"], name: "index_facturas_on_persona_id"

  create_table "medios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "contacto"
    t.integer  "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "medios", ["cliente_id"], name: "index_medios_on_cliente_id"

  create_table "personas", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
