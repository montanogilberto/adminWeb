class CreteTableAddresses < ActiveRecord::Migration[5.1]
  def change
    drop_table :addresses
    create_table :addresses do |t|
      t.string :calle
      t.string :entre
      t.string :entre2
      t.string :noExterior
      t.string :noInterior
      t.text :referencia
      t.references :state, foreign_key: true
      t.references :postal_code, foreign_key: true
      t.references :town, foreign_key: true
      t.references :township, foreign_key: true

      t.timestamps
    end
  end
end
