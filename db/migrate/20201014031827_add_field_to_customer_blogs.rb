class AddFieldToCustomerBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :customer_blogs, :field, :string
  end
end
