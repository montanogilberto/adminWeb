class CreateTownTypes < ActiveRecord::Migration[5.1]
  def change
    drop_table(:town_types, if_exists: true)
    create_table :town_types do |t|
      t.string :tipoAsentamiento
      t.string :codigo

      t.timestamps
    end
  end
end
