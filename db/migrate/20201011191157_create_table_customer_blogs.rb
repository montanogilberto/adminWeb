class CreateTableCustomerBlogs < ActiveRecord::Migration[5.1]
  def change
    drop_table(:customer_blogs, if_exists: true, force: :cascade)
    create_table :customer_blogs do |t|
      t.string :action
      t.string :new
      t.string :older
      t.timestamps
      t.references :customers, foreign_key: true
    end
  end
end
