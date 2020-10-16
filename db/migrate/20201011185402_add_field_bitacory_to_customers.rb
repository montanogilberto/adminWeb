class AddFieldBitacoryToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :customer_blog_id, :integer
  end
end
