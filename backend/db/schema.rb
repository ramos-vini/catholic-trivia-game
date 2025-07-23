ActiveRecord::Schema[7.2].define(version: 2025_07_22_205616) do
  enable_extension "plpgsql"

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.string "options", default: [], array: true
    t.string "answer"
    t.string "difficulty"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
