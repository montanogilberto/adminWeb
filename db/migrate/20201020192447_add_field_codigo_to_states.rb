class AddFieldCodigoToStates < ActiveRecord::Migration[5.1]
  def change
    add_column :states, :codigo, :string
  end
end
