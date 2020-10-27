class DropTableToCustomerDetails < ActiveRecord::Migration[5.1]
  def change
    drop_table(:customer_details, if_exists: true)
  end
end
