class CreateStates < ActiveRecord::Migration[5.1]
  def change
    drop_table(:states, if_exists: true)
    create_table :states do |t|
      t.string :estado
      t.string :codigo
      t.string :circuito

      t.timestamps
    end
  end
end
