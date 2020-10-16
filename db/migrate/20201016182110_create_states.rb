class CreateStates < ActiveRecord::Migration[5.1]
  def change
    drop_table :states, force: :cascade
    create_table :states do |t|
      t.string :estado
      t.string :circuito

      t.timestamps
    end
  end
end
