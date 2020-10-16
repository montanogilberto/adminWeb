class ChangeFieldCustomerIdToCustomerBlog < ActiveRecord::Migration[5.1]
  def change
    remove_column :customer_blogs, :customers_id
    add_column :customer_blogs, :customer_id, :integer
  end
end
