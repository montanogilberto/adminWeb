class CreateTowns < ActiveRecord::Migration[5.1]
  def change
    drop_table :towns
    create_table :towns do |t|
      t.string :asentamiento
      t.references :township, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
