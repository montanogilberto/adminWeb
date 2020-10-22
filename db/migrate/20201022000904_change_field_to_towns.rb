class ChangeFieldToTowns < ActiveRecord::Migration[5.1]
  def change
    remove_column :towns, :state_id
    add_reference :towns, :town_type, index: true
    
  end
end
