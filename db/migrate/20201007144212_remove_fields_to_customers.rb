class RemoveFieldsToCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :adress
    remove_column :customers, :adress2
  end
end
