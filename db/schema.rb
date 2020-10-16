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

ActiveRecord::Schema.define(version: 20201016183311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accesoasesorias", primary_key: "idacceso", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "clave", limit: 50, comment: "TRIAL"
    t.integer "idusuario", comment: "TRIAL"
    t.integer "accesopago", comment: "TRIAL"
    t.string "trial563", limit: 1, comment: "TRIAL"
  end

  create_table "accesoexpedientesestatales", primary_key: "idacceso", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "expediente", limit: 50, comment: "TRIAL"
    t.integer "idusuario", comment: "TRIAL"
    t.integer "accesopago", comment: "TRIAL"
    t.string "trial563", limit: 1, comment: "TRIAL"
  end

  create_table "accesoexpedientesextraju", primary_key: "idacceso", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "expediente", limit: 100, comment: "TRIAL"
    t.integer "idusuario", comment: "TRIAL"
    t.integer "accesopago", comment: "TRIAL"
    t.string "trial566", limit: 1, comment: "TRIAL"
  end

  create_table "accesoexpedientesfederales", primary_key: "idacceso", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "expediente", limit: 50, comment: "TRIAL"
    t.integer "idusuario", comment: "TRIAL"
    t.integer "accesopago", comment: "TRIAL"
    t.string "trial566", limit: 1, comment: "TRIAL"
  end

  create_table "acciones", primary_key: "idaccion", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.text "accion", comment: "TRIAL"
    t.string "materia", limit: 50, comment: "TRIAL"
    t.string "trial570", limit: 1, comment: "TRIAL"
  end

  create_table "acts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actuaciones", primary_key: "idactuacion", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "expediente", limit: 50, comment: "TRIAL"
    t.string "tipoactuacion", limit: 50, comment: "TRIAL"
    t.date "fechaactuacion", comment: "TRIAL"
    t.text "nombreactuacion", comment: "TRIAL"
    t.text "observaciones", comment: "TRIAL"
    t.integer "cumplido", comment: "TRIAL"
    t.text "documentopromocion", comment: "TRIAL"
    t.string "trial573", limit: 1, comment: "TRIAL"
  end

  create_table "actuacionesextrajudiciales", primary_key: "idactuacion", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "expediente", limit: 100, comment: "TRIAL"
    t.string "tipoactuacion", limit: 50, comment: "TRIAL"
    t.date "fechaactuacion", comment: "TRIAL"
    t.text "nombreactuacion", comment: "TRIAL"
    t.text "observaciones", comment: "TRIAL"
    t.integer "cumplido", comment: "TRIAL"
    t.text "documentopromocion", comment: "TRIAL"
    t.string "trial576", limit: 1, comment: "TRIAL"
  end

  create_table "actuacionesfederales", primary_key: "idactuacion", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "expediente", limit: 50, comment: "TRIAL"
    t.string "tipoactuacion", limit: 50, comment: "TRIAL"
    t.date "fechaactuacion", comment: "TRIAL"
    t.text "nombreactuacion", comment: "TRIAL"
    t.text "observaciones", comment: "TRIAL"
    t.integer "cumplido", comment: "TRIAL"
    t.text "documentopromocion", comment: "TRIAL"
    t.string "trial580", limit: 1, comment: "TRIAL"
  end

  create_table "acuerdos", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.text "claveacuerdo", comment: "TRIAL"
    t.integer "idweb", comment: "TRIAL"
    t.string "noexpediente", limit: 50, comment: "TRIAL"
    t.integer "año", comment: "TRIAL"
    t.date "fecha", comment: "TRIAL"
    t.text "secretaria", comment: "TRIAL"
    t.text "asunto", comment: "TRIAL"
    t.text "partes", comment: "TRIAL"
    t.text "sintesis", comment: "TRIAL"
    t.date "fechanotificacion", comment: "TRIAL"
    t.time "horanotificacion", precision: 6, comment: "TRIAL"
    t.integer "notificacioncorreodespacho", comment: "TRIAL"
    t.integer "idjuzgadosistema", comment: "TRIAL"
    t.string "trial583", limit: 1, comment: "TRIAL"
  end

  create_table "address_types", id: :serial, force: :cascade do |t|
    t.string "address_type", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string "calle"
    t.string "entre"
    t.string "entre2"
    t.string "noExterior"
    t.string "noInterior"
    t.text "referencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "asentamientos", primary_key: "asentamientoid", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "asentamiento", limit: 50, comment: "TRIAL"
    t.integer "tipoasentamientoid", null: false, comment: "TRIAL"
    t.integer "municipioid", null: false, comment: "TRIAL"
    t.string "trial415", limit: 1, comment: "TRIAL"
  end

  create_table "asesorias", primary_key: "clave", id: :string, limit: 50, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.integer "idestado", comment: "TRIAL"
    t.integer "iddistritoju", comment: "TRIAL"
    t.string "organismo", limit: 50, comment: "TRIAL"
    t.string "tramite", limit: 50, comment: "TRIAL"
    t.string "cliente", limit: 50, comment: "TRIAL"
    t.string "contrario", limit: 50, comment: "TRIAL"
    t.text "observaciones", comment: "TRIAL"
    t.float "honorarios", comment: "TRIAL"
    t.float "saldo", comment: "TRIAL"
    t.text "carpeta", comment: "TRIAL"
    t.integer "activo", comment: "TRIAL"
    t.string "expedientejudicial", limit: 50, comment: "TRIAL"
    t.text "comentario", comment: "TRIAL"
    t.integer "idusuariocreador", comment: "TRIAL"
    t.date "fechacreacion", comment: "TRIAL"
    t.time "horacreacion", precision: 6, comment: "TRIAL"
    t.string "trial586", limit: 1, comment: "TRIAL"
  end

  create_table "circuitos", primary_key: "idcircuito", id: :integer, comment: "TRIAL", default: nil, force: :cascade, comment: "TRIAL" do |t|
    t.string "circuito", limit: 50, comment: "TRIAL"
    t.string "clavecarpeta", limit: 50, comment: "TRIAL"
    t.string "trial589", limit: 1, comment: "TRIAL"
  end

  create_table "codigopostales", primary_key: "codigopostalid", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "codigopostal", limit: 10, null: false, comment: "TRIAL"
    t.integer "asentamientoid", null: false, comment: "TRIAL"
  end

  create_table "contactos", primary_key: "idcontacto", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.text "nombrecontac", comment: "TRIAL"
    t.text "domiciliopart", comment: "TRIAL"
    t.text "domicilionoti", comment: "TRIAL"
    t.text "tipocontac", comment: "TRIAL"
    t.text "celcontac", comment: "TRIAL"
    t.text "correocontac", comment: "TRIAL"
    t.string "trial593", limit: 1, comment: "TRIAL"
    t.date "created_at"
    t.date "updated_at"
  end

  create_table "courts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_blogs", force: :cascade do |t|
    t.string "action"
    t.string "new"
    t.string "older"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "field"
    t.integer "user_id"
    t.integer "customer_id"
  end

  create_table "customer_details", id: :integer, default: -> { "nextval('customerdetails_customerdetailid_seq'::regclass)" }, force: :cascade, comment: "TRIAL" do |t|
    t.bigint "customer_id", null: false
    t.bigint "domicilio_id"
    t.bigint "address_type_id"
  end

  create_table "customer_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.bigint "customer_type_id"
    t.string "name2"
    t.string "lastname"
    t.string "lastname2"
    t.string "cellular"
    t.index ["customer_type_id"], name: "index_customers_on_customer_type_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "state_id"
    t.index ["state_id"], name: "index_districts_on_state_id"
  end

  create_table "distritosjudiciales", primary_key: "iddistritojudicial", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "clavedistrito", limit: 50, null: false, comment: "TRIAL"
    t.string "nombredistrito", limit: 50, comment: "TRIAL"
    t.integer "idestado", comment: "TRIAL"
    t.string "trial593", limit: 1, comment: "TRIAL"
  end

  create_table "domicilios", primary_key: "domicilioid", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "calle", limit: 100, null: false, comment: "TRIAL"
    t.string "entre", limit: 100, comment: "TRIAL"
    t.string "entre2", limit: 100, comment: "TRIAL"
    t.string "noexterior", limit: 5, comment: "TRIAL"
    t.string "nointerior", limit: 5, comment: "TRIAL"
    t.string "referenciadomicilio", limit: 200, comment: "TRIAL"
    t.integer "codigopostalid", comment: "TRIAL"
    t.integer "asentamientoid", comment: "TRIAL"
    t.integer "tipoasentamientoid", comment: "TRIAL"
    t.integer "municipioid", comment: "TRIAL"
  end

  create_table "estados", primary_key: "idestado", id: :integer, comment: "TRIAL", default: nil, force: :cascade, comment: "TRIAL" do |t|
    t.string "estado", limit: 50, comment: "TRIAL"
    t.integer "circuito", comment: "TRIAL"
    t.string "trial596", limit: 1, comment: "TRIAL"
  end

  create_table "expedientes", primary_key: "expediente", id: :string, limit: 50, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.integer "idjuzgado", comment: "TRIAL"
    t.text "actor", comment: "TRIAL"
    t.text "demandado", comment: "TRIAL"
    t.string "materia", limit: 50, comment: "TRIAL"
    t.string "tipojuicio", limit: 50, comment: "TRIAL"
    t.text "accion", comment: "TRIAL"
    t.string "cliente", limit: 50, comment: "TRIAL"
    t.float "honorarios", comment: "TRIAL"
    t.float "saldo", comment: "TRIAL"
    t.text "url", comment: "TRIAL"
    t.text "carpeta", comment: "TRIAL"
    t.string "noexpediente", limit: 50, comment: "TRIAL"
    t.string "año", limit: 50, comment: "TRIAL"
    t.integer "activo", comment: "TRIAL"
    t.text "urlpoderjucial", comment: "TRIAL"
    t.date "fechabusquedadeacuerdos", comment: "TRIAL"
    t.time "horabusquedadeacuerdos", precision: 6, comment: "TRIAL"
    t.integer "idusuariocreador", comment: "TRIAL"
    t.date "fechacreacion", comment: "TRIAL"
    t.time "horacreacion", precision: 6, comment: "TRIAL"
    t.string "trial596", limit: 1, comment: "TRIAL"
  end

  create_table "expedientesextrajudiciales", primary_key: "expediente", id: :string, limit: 100, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.integer "idestado", comment: "TRIAL"
    t.integer "iddistritoju", comment: "TRIAL"
    t.string "organismo", limit: 50, comment: "TRIAL"
    t.string "tramite", limit: 50, comment: "TRIAL"
    t.string "cliente", limit: 50, comment: "TRIAL"
    t.text "observaciones", comment: "TRIAL"
    t.float "honorarios", comment: "TRIAL"
    t.float "saldo", comment: "TRIAL"
    t.text "carpeta", comment: "TRIAL"
    t.string "claveexpediente", limit: 50, comment: "TRIAL"
    t.string "año", limit: 50, comment: "TRIAL"
    t.integer "activo", comment: "TRIAL"
    t.string "contrario", limit: 50, comment: "TRIAL"
    t.string "expedientejudicial", limit: 50, comment: "TRIAL"
    t.text "comentario", comment: "TRIAL"
    t.integer "idusuariocreador", comment: "TRIAL"
    t.date "fechacreacion", comment: "TRIAL"
    t.time "horacreacion", precision: 6, comment: "TRIAL"
    t.string "trial599", limit: 1, comment: "TRIAL"
  end

  create_table "expedientesfederales", primary_key: "expediente", id: :string, limit: 50, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.integer "idjuzgadofederal", comment: "TRIAL"
    t.integer "idestado", comment: "TRIAL"
    t.integer "idcircuito", comment: "TRIAL"
    t.string "quejoso", limit: 50, comment: "TRIAL"
    t.text "autoridadresponsable", comment: "TRIAL"
    t.string "tercerointeresado", limit: 50, comment: "TRIAL"
    t.string "cliente", limit: 50, comment: "TRIAL"
    t.integer "idtipoexpediente", comment: "TRIAL"
    t.float "honorarios", comment: "TRIAL"
    t.float "saldo", comment: "TRIAL"
    t.text "carpeta", comment: "TRIAL"
    t.string "noexpediente", limit: 50, comment: "TRIAL"
    t.string "año", limit: 50, comment: "TRIAL"
    t.integer "activo", comment: "TRIAL"
    t.text "url", comment: "TRIAL"
    t.text "urlestatal", comment: "TRIAL"
    t.integer "idusuariocreador", comment: "TRIAL"
    t.date "fechacreacion", comment: "TRIAL"
    t.time "horacreacion", precision: 6, comment: "TRIAL"
    t.string "trial602", limit: 1, comment: "TRIAL"
  end

  create_table "expedients", force: :cascade do |t|
    t.string "NoExpedient"
    t.datetime "year"
    t.boolean "active"
    t.string "actor"
    t.string "defendant"
    t.string "customer"
    t.money "fee", scale: 2
    t.money "payment", scale: 2
    t.money "saldo", scale: 2
    t.bigint "court_id"
    t.bigint "state_id"
    t.bigint "district_id"
    t.bigint "act_id"
    t.bigint "matter_id"
    t.bigint "judgment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act_id"], name: "index_expedients_on_act_id"
    t.index ["court_id"], name: "index_expedients_on_court_id"
    t.index ["district_id"], name: "index_expedients_on_district_id"
    t.index ["judgment_id"], name: "index_expedients_on_judgment_id"
    t.index ["matter_id"], name: "index_expedients_on_matter_id"
    t.index ["state_id"], name: "index_expedients_on_state_id"
  end

  create_table "judgments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "juzgados", primary_key: "idjuzgado", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.integer "idestado", comment: "TRIAL"
    t.integer "iddistritojudicial", comment: "TRIAL"
    t.integer "idjuzgadobl", comment: "TRIAL"
    t.text "direccionjuz", comment: "TRIAL"
    t.text "juezjuz", comment: "TRIAL"
    t.text "codigojuz", comment: "TRIAL"
    t.text "telefonojuz", comment: "TRIAL"
    t.text "secretariojuz", comment: "TRIAL"
    t.text "primersecre", comment: "TRIAL"
    t.text "segundosecre", comment: "TRIAL"
    t.text "tercersecre", comment: "TRIAL"
    t.string "trial602", limit: 1, comment: "TRIAL"
  end

  create_table "juzgadosbuholegal", primary_key: "idjuzgadobl", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.integer "idwebjuzgadobl", null: false, comment: "TRIAL"
    t.text "juzgadobuho", comment: "TRIAL"
    t.string "clavedistrito", limit: 50, comment: "TRIAL"
    t.integer "idestado", comment: "TRIAL"
    t.integer "idwebestatal", comment: "TRIAL"
    t.string "trial606", limit: 1, comment: "TRIAL"
  end

  create_table "juzgadosfederales", primary_key: "idjuzgadofederal", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.integer "idestado", comment: "TRIAL"
    t.integer "idjuzgadofederalbl", comment: "TRIAL"
    t.text "direccionjuzfederal", comment: "TRIAL"
    t.text "juezjuzfederal", comment: "TRIAL"
    t.text "codigojuzfederal", comment: "TRIAL"
    t.text "telefonojuzfederal", comment: "TRIAL"
    t.text "secretariojuzfederal", comment: "TRIAL"
    t.text "primersecrefederal", comment: "TRIAL"
    t.text "segundosecrefederal", comment: "TRIAL"
    t.text "tercersecrefederal", comment: "TRIAL"
    t.string "trial609", limit: 1, comment: "TRIAL"
  end

  create_table "juzgadosfederalesbuhol", primary_key: "idjuzgadofederalbl", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.integer "idwebjuzgadofederalbl", comment: "TRIAL"
    t.text "juzgadofederalbuho", comment: "TRIAL"
    t.integer "idestado", comment: "TRIAL"
    t.integer "idtipoorganismo", comment: "TRIAL"
    t.string "trial612", limit: 1, comment: "TRIAL"
  end

  create_table "matters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "municipios", primary_key: "municipioid", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "municipio", limit: 100, null: false, comment: "TRIAL"
    t.string "codigo", limit: 5, null: false, comment: "TRIAL"
    t.integer "estadoid", null: false, comment: "TRIAL"
    t.string "trial230", limit: 1, comment: "TRIAL"
  end

  create_table "orgaismosextrajudiciales", primary_key: "idorganismo", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.integer "idestado", comment: "TRIAL"
    t.text "organismo", comment: "TRIAL"
    t.string "trial615", limit: 1, comment: "TRIAL"
  end

  create_table "pagos", primary_key: "idpago", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "expediente", limit: 50, comment: "TRIAL"
    t.date "fecha", comment: "TRIAL"
    t.float "importe", comment: "TRIAL"
    t.text "concepto", comment: "TRIAL"
    t.time "hora", precision: 6, comment: "TRIAL"
    t.string "trial619", limit: 1, comment: "TRIAL"
  end

  create_table "pagosasesorias", primary_key: "idpagoasesoria", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "clave", limit: 50, comment: "TRIAL"
    t.date "fecha", comment: "TRIAL"
    t.float "importe", comment: "TRIAL"
    t.text "concepto", comment: "TRIAL"
    t.time "hora", precision: 6, comment: "TRIAL"
    t.string "trial619", limit: 1, comment: "TRIAL"
  end

  create_table "pagosextrajudiciales", primary_key: "idpagoextrajudicial", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "expediente", limit: 100, comment: "TRIAL"
    t.date "fecha", comment: "TRIAL"
    t.float "importe", comment: "TRIAL"
    t.text "concepto", comment: "TRIAL"
    t.time "hora", precision: 6, comment: "TRIAL"
    t.string "trial622", limit: 1, comment: "TRIAL"
  end

  create_table "pagosfederales", primary_key: "idpagofederal", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "expediente", limit: 50, comment: "TRIAL"
    t.date "fecha", comment: "TRIAL"
    t.float "importe", comment: "TRIAL"
    t.text "concepto", comment: "TRIAL"
    t.time "hora", precision: 6, comment: "TRIAL"
    t.string "trial625", limit: 1, comment: "TRIAL"
  end

  create_table "parametros", primary_key: "idparametro", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.text "rutaraizcarpeta", comment: "TRIAL"
    t.string "estado", limit: 50, comment: "TRIAL"
    t.string "distrito", limit: 50, comment: "TRIAL"
    t.integer "circuito", comment: "TRIAL"
    t.string "tipobusquedaacuerdos", limit: 50, comment: "TRIAL"
    t.text "correodespacho", comment: "TRIAL"
    t.integer "idusuario", comment: "TRIAL"
    t.string "trial625", limit: 1, comment: "TRIAL"
  end

  create_table "postal_codes", force: :cascade do |t|
    t.string "codigoPostal"
    t.bigint "town_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["town_id"], name: "index_postal_codes_on_town_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "estado"
    t.string "circuito"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sysdiagrams", primary_key: "diagram_id", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "name", limit: 128, null: false, comment: "TRIAL"
    t.integer "principal_id", null: false, comment: "TRIAL"
    t.integer "version", comment: "TRIAL"
    t.binary "definition", comment: "TRIAL"
    t.string "trial629", limit: 1, comment: "TRIAL"
    t.index ["principal_id", "name"], name: "uk_principal_name", unique: true
  end

  create_table "tipoasentamientos", primary_key: "tipoasentamientoid", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "tipoasentamiento", limit: 100, null: false, comment: "TRIAL"
    t.string "codigo", limit: 10, null: false, comment: "TRIAL"
    t.string "trial418", limit: 1, comment: "TRIAL"
  end

  create_table "tiposdeactuaciones", primary_key: "idtipodeactuacion", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.text "tipodeactuacion", comment: "TRIAL"
    t.string "trial629", limit: 1, comment: "TRIAL"
  end

  create_table "tiposdeexpedientes", primary_key: "idtipoexpediente", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "tipodeexpediente", limit: 50, comment: "TRIAL"
    t.integer "idtipoorganismo", comment: "TRIAL"
    t.integer "idwebtipoexpediente", comment: "TRIAL"
    t.string "trial632", limit: 1, comment: "TRIAL"
  end

  create_table "tiposdejuicio", primary_key: "idtipodejuicio", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "tipodejucio", limit: 50, comment: "TRIAL"
    t.string "trial635", limit: 1, comment: "TRIAL"
  end

  create_table "tiposdeorganismos", primary_key: "idtipoorganismo", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "nombretipo", limit: 50, comment: "TRIAL"
    t.string "trial635", limit: 1, comment: "TRIAL"
  end

  create_table "tiposdetramites", primary_key: "idtipodetramite", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "tipodetramite", limit: 50, comment: "TRIAL"
    t.string "trial638", limit: 1, comment: "TRIAL"
  end

  create_table "town_types", force: :cascade do |t|
    t.string "tipoAsentamiento"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "towns", force: :cascade do |t|
    t.string "asentamiento"
    t.bigint "township_id"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_towns_on_state_id"
    t.index ["township_id"], name: "index_towns_on_township_id"
  end

  create_table "townships", force: :cascade do |t|
    t.string "municipio"
    t.string "codigo"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_townships_on_state_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", primary_key: "idusuario", id: :serial, comment: "TRIAL", force: :cascade, comment: "TRIAL" do |t|
    t.string "usuario", limit: 50, comment: "TRIAL"
    t.string "clave", limit: 50, comment: "TRIAL"
    t.string "nombre", limit: 50, comment: "TRIAL"
    t.string "cedula", limit: 50, comment: "TRIAL"
    t.string "nivel", limit: 50, comment: "TRIAL"
    t.string "activo", limit: 10, comment: "TRIAL"
    t.string "correo", limit: 50, comment: "TRIAL"
    t.string "telefono", limit: 50, comment: "TRIAL"
    t.string "trial642", limit: 1, comment: "TRIAL"
  end

  add_foreign_key "accesoasesorias", "asesorias", column: "clave", primary_key: "clave", name: "fk_accesoasesorias_asesorias", on_update: :cascade
  add_foreign_key "accesoasesorias", "usuarios", column: "idusuario", primary_key: "idusuario", name: "fk_accesoasesorias_usuarios"
  add_foreign_key "accesoexpedientesestatales", "expedientes", column: "expediente", primary_key: "expediente", name: "fk_accesoexpedientesestatales_expedientes", on_update: :cascade
  add_foreign_key "accesoexpedientesestatales", "usuarios", column: "idusuario", primary_key: "idusuario", name: "fk_accesoexpedientesestatales_usuarios"
  add_foreign_key "accesoexpedientesextraju", "expedientesextrajudiciales", column: "expediente", primary_key: "expediente", name: "fk_accesoexpedientesextraju_expedientesextrajudiciales", on_update: :cascade
  add_foreign_key "accesoexpedientesextraju", "usuarios", column: "idusuario", primary_key: "idusuario", name: "fk_accesoexpedientesextraju_usuarios"
  add_foreign_key "accesoexpedientesfederales", "expedientesfederales", column: "expediente", primary_key: "expediente", name: "fk_accesoexpedientesfederales_expedientesfederales", on_update: :cascade
  add_foreign_key "accesoexpedientesfederales", "usuarios", column: "idusuario", primary_key: "idusuario", name: "fk_accesoexpedientesfederales_usuarios"
  add_foreign_key "actuaciones", "expedientes", column: "expediente", primary_key: "expediente", name: "fk_actuaciones_expedientes", on_update: :cascade, on_delete: :cascade
  add_foreign_key "actuacionesextrajudiciales", "expedientesextrajudiciales", column: "expediente", primary_key: "expediente", name: "fk_actuacionesextrajudiciales_expedientesextrajudiciales"
  add_foreign_key "actuacionesfederales", "expedientesfederales", column: "expediente", primary_key: "expediente", name: "fk_actuacionesfederales_expedientesfederales"
  add_foreign_key "asentamientos", "tipoasentamientos", column: "tipoasentamientoid", primary_key: "tipoasentamientoid", name: "fk_asentamientos_tipoasentamientos"
  add_foreign_key "codigopostales", "asentamientos", column: "asentamientoid", primary_key: "asentamientoid", name: "fk_codigopostal_asentamiento"
  add_foreign_key "customer_blogs", "users"
  add_foreign_key "customer_details", "address_types", name: "FK_customer_details_address_type"
  add_foreign_key "customer_details", "domicilios", primary_key: "domicilioid", name: "FK_customer_details_domicilios"
  add_foreign_key "customers", "customer_types"
  add_foreign_key "customers", "users"
  add_foreign_key "distritosjudiciales", "estados", column: "idestado", primary_key: "idestado", name: "fk_distritosjudiciales_estados"
  add_foreign_key "domicilios", "asentamientos", column: "asentamientoid", primary_key: "asentamientoid", name: "fk_domicilios_asentamiento"
  add_foreign_key "domicilios", "codigopostales", column: "codigopostalid", primary_key: "codigopostalid", name: "fk_domicilios_codigopostales"
  add_foreign_key "domicilios", "municipios", column: "municipioid", primary_key: "municipioid", name: "fk_domicilios_municipios"
  add_foreign_key "domicilios", "tipoasentamientos", column: "tipoasentamientoid", primary_key: "tipoasentamientoid", name: "fk_domicilios_tipoasentamiento"
  add_foreign_key "estados", "circuitos", column: "circuito", primary_key: "idcircuito", name: "fk_estados_circuitos"
  add_foreign_key "expedientes", "juzgados", column: "idjuzgado", primary_key: "idjuzgado", name: "fk_expedientes_juzgados", on_update: :cascade, on_delete: :cascade
  add_foreign_key "expedientes", "usuarios", column: "idusuariocreador", primary_key: "idusuario", name: "fk_expedientes_usuarios"
  add_foreign_key "expedientesextrajudiciales", "distritosjudiciales", column: "iddistritoju", primary_key: "iddistritojudicial", name: "fk_expedientesextrajudiciales_distritosjudiciales"
  add_foreign_key "expedientesextrajudiciales", "estados", column: "idestado", primary_key: "idestado", name: "fk_expedientesextrajudiciales_estados"
  add_foreign_key "expedientesextrajudiciales", "usuarios", column: "idusuariocreador", primary_key: "idusuario", name: "fk_expedientesextrajudiciales_usuarios"
  add_foreign_key "expedientesfederales", "juzgadosfederales", column: "idjuzgadofederal", primary_key: "idjuzgadofederal", name: "fk_expedientesfederales_juzgadosfederales"
  add_foreign_key "expedientesfederales", "tiposdeexpedientes", column: "idtipoexpediente", primary_key: "idtipoexpediente", name: "fk_expedientesfederales_tiposdeexpedientes"
  add_foreign_key "expedientesfederales", "usuarios", column: "idusuariocreador", primary_key: "idusuario", name: "fk_expedientesfederales_usuarios"
  add_foreign_key "expedients", "acts"
  add_foreign_key "expedients", "courts"
  add_foreign_key "expedients", "districts"
  add_foreign_key "expedients", "judgments"
  add_foreign_key "expedients", "matters"
  add_foreign_key "juzgados", "distritosjudiciales", column: "iddistritojudicial", primary_key: "iddistritojudicial", name: "fk_juzgados_distritosjudiciales"
  add_foreign_key "juzgados", "estados", column: "idestado", primary_key: "idestado", name: "fk_juzgados_estados"
  add_foreign_key "juzgados", "juzgadosbuholegal", column: "idjuzgadobl", primary_key: "idjuzgadobl", name: "fk_juzgados_juzgadosbuholegal"
  add_foreign_key "juzgadosbuholegal", "estados", column: "idestado", primary_key: "idestado", name: "fk_juzgadosbuholegal_estados"
  add_foreign_key "juzgadosfederales", "estados", column: "idestado", primary_key: "idestado", name: "fk_juzgadosfederales_estados"
  add_foreign_key "juzgadosfederales", "juzgadosfederalesbuhol", column: "idjuzgadofederalbl", primary_key: "idjuzgadofederalbl", name: "fk_juzgadosfederales_juzgadosfederalesbuhol"
  add_foreign_key "juzgadosfederalesbuhol", "estados", column: "idestado", primary_key: "idestado", name: "fk_juzgadosfederalesbuhol_juzgadosfederalesbuhol"
  add_foreign_key "juzgadosfederalesbuhol", "tiposdeorganismos", column: "idtipoorganismo", primary_key: "idtipoorganismo", name: "fk_juzgadosfederalesbuhol_tiposdeorganismos"
  add_foreign_key "municipios", "estados", column: "estadoid", primary_key: "idestado", name: "fk_municipios_estados"
  add_foreign_key "orgaismosextrajudiciales", "estados", column: "idestado", primary_key: "idestado", name: "fk_orgaismosextrajudiciales_estados"
  add_foreign_key "pagos", "expedientes", column: "expediente", primary_key: "expediente", name: "fk_pagos_expedientes", on_update: :cascade, on_delete: :cascade
  add_foreign_key "pagosasesorias", "asesorias", column: "clave", primary_key: "clave", name: "fk_pagosasesorias_asesorias", on_update: :cascade
  add_foreign_key "pagosextrajudiciales", "expedientesextrajudiciales", column: "expediente", primary_key: "expediente", name: "fk_pagosextrajudiciales_expedientesextrajudiciales"
  add_foreign_key "pagosfederales", "expedientesfederales", column: "expediente", primary_key: "expediente", name: "fk_pagosfederales_expedientesfederales"
  add_foreign_key "parametros", "usuarios", column: "idusuario", primary_key: "idusuario", name: "fk_parametros_usuarios"
  add_foreign_key "postal_codes", "towns"
  add_foreign_key "tiposdeexpedientes", "tiposdeorganismos", column: "idtipoorganismo", primary_key: "idtipoorganismo", name: "fk_tiposdeexpedientes_tiposdeorganismos"
  add_foreign_key "towns", "states"
  add_foreign_key "towns", "townships"
  add_foreign_key "townships", "states"
end
