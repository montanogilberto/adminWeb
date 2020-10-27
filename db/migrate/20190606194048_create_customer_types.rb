class CreateCustomerTypes < ActiveRecord::Migration[5.1]
  def change
    drop_table(:customer_types, if_exists: true)
    create_table :customer_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
