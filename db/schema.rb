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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140813204609) do
=======
ActiveRecord::Schema.define(version: 20140807201100) do
>>>>>>> 039f7f56d668882d5e4e06f15d8bd5c2f0f43cf3

  create_table "categorias", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias_insumos", force: true do |t|
    t.integer  "insumos_id"
    t.integer  "categorias_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categorias_insumos", ["categorias_id"], name: "index_categorias_insumos_on_categorias_id"
  add_index "categorias_insumos", ["insumos_id"], name: "index_categorias_insumos_on_insumos_id"

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "nombreEmpresa"
    t.integer  "nit"
    t.string   "ciudad"
    t.integer  "telefono"
    t.string   "direccion"
    t.string   "correoElectronico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empleados", force: true do |t|
<<<<<<< HEAD
    t.string   "name"
    t.string   "doc"
    t.integer  "estado_id"
    t.string   "direccion"
    t.string   "barrio"
    t.string   "ciudad"
    t.string   "telefono"
    t.string   "celular"
    t.string   "correo"
    t.boolean  "genero"
    t.string   "estudios"
    t.string   "experiencia"
    t.date     "fchinicio"
    t.date     "fchfinal"
    t.string   "cargo"
    t.string   "ref"
    t.string   "telref"
=======
    t.string   "nombre"
    t.integer  "docIdentificacion"
    t.string   "estadoCivil"
    t.string   "direccion"
    t.string   "ciudad"
    t.string   "barrio"
    t.integer  "telefono"
    t.integer  "celular"
    t.string   "correoElectronico"
    t.boolean  "genero"
    t.string   "estudios"
    t.string   "experienciasLaborales"
    t.date     "fchInicio"
    t.date     "fchFinal"
    t.string   "cargo"
    t.string   "nomReferencia"
    t.string   "telReferencia"
>>>>>>> 039f7f56d668882d5e4e06f15d8bd5c2f0f43cf3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  add_index "empleados", ["estado_id"], name: "index_empleados_on_estado_id"

=======
>>>>>>> 039f7f56d668882d5e4e06f15d8bd5c2f0f43cf3
  create_table "estado_civil_empleados", force: true do |t|
    t.integer  "empleados_id"
    t.integer  "estado_civils_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estado_civil_empleados", ["empleados_id"], name: "index_estado_civil_empleados_on_empleados_id"
  add_index "estado_civil_empleados", ["estado_civils_id"], name: "index_estado_civil_empleados_on_estado_civils_id"

  create_table "estado_civils", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estudios", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estudios_empleados", force: true do |t|
    t.integer  "empleados_id"
    t.integer  "estudios_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facturacions", force: true do |t|
    t.date     "fecha"
    t.date     "fchVencimiento"
    t.string   "cliente"
    t.integer  "cotizacion"
    t.string   "descripcion"
    t.integer  "cantidad"
    t.integer  "precio"
    t.integer  "iva"
    t.integer  "valorIva"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insumos", force: true do |t|
    t.string   "cliente"
    t.date     "fch_creacion"
    t.string   "categoria"
    t.integer  "cantidad"
    t.integer  "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pedidos", force: true do |t|
    t.string   "empresa"
    t.integer  "cantidad"
    t.string   "descripcion"
    t.date     "fchRealizacion"
    t.date     "plazoEnvio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pruebas", force: true do |t|
    t.string   "nombre"
    t.integer  "categoria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pruebas", ["categoria_id"], name: "index_pruebas_on_categoria_id"

end
