class CreateCodigoPostals < ActiveRecord::Migration[5.1]
  def change
    create_table :codigo_postals do |t|
      t.references :town, foreign_key: true

      t.timestamps
    end
  end
end
