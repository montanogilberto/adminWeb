class CreatePostalCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :postal_codes do |t|
      t.string :codigoPostal
      t.references :town, foreign_key: true

      t.timestamps
    end
  end
end
