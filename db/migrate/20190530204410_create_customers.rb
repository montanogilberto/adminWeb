class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :adress
      t.string :adress2
      t.string :email
      t.string :celular
      t.references :Users, foreign_key: true

      t.timestamps
    end
  end
end
