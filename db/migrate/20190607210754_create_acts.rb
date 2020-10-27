class CreateActs < ActiveRecord::Migration[5.1]
  def change
    drop_table :acts
    create_table :acts do |t|
      t.string :name

      t.timestamps
    end
  end
end
