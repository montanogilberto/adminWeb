class RemoveFields2ToCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :celular
  end
end
