class AddFieldsToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :name2, :string
    add_column :customers, :lastname, :string
    add_column :customers, :lastname2, :string
    add_column :customers, :cellular, :string
  end
end
