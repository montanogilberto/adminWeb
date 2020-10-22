class AddFieldCodigoPostalToCodigoPostals < ActiveRecord::Migration[5.1]
  def change
    add_column :codigo_postals, :codigoPostal, :string
  end
end
