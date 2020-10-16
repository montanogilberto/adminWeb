class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :calle
      t.string :entre
      t.string :entre2
      t.string :noExterior
      t.string :noInterior
      t.text :referencia

      t.timestamps
    end
  end
end
