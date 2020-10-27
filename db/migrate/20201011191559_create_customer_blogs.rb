class CreateCustomerBlogs < ActiveRecord::Migration[5.1]
  def change
    drop_table :customer_blogs2
  end
end
