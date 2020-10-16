class CreateTownTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :town_types do |t|
      t.string :tipoAsentamiento
      t.string :codigo

      t.timestamps
    end
  end
end
