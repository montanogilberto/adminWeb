class DeleteFieldCustomerBlogIdToCustomerBlogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :customer_blog_id
  end
end
