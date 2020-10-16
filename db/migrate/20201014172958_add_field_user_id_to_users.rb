class AddFieldUserIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :customer_blogs, :user_id, :integer
    add_foreign_key :customer_blogs, :users 
  end
end
