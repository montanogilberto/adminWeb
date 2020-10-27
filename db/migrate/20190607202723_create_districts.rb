class CreateDistricts < ActiveRecord::Migration[5.1]
  def change
    drop_table(:districts, if_exists: true, force: :cascade)
    create_table :districts do |t|
      t.string :name

      t.timestamps
    end
  end
end
