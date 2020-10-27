class CreateDistricts < ActiveRecord::Migration[5.1]
  def change
    drop_table :districts
    create_table :districts do |t|
      t.string :name

      t.timestamps
    end
  end
end
