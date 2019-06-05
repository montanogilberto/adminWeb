class ChangeUserIdToInteger < ActiveRecord::Migration[5.1]
  def change
  	change_column :customers, :user_id, :integer
  end
end
