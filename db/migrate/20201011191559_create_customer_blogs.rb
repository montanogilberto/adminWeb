class CreateCustomerBlogs < ActiveRecord::Migration[5.1]
  def change
    drop_table(:customer_blog2, if_exists: true, force: :cascade)
  end
end
