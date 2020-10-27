class CreateTownships < ActiveRecord::Migration[5.1]
  def change
    drop_table :townships
    create_table :townships do |t|
      t.string :municipio
      t.string :codigo
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
