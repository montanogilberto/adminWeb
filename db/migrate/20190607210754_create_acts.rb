class CreateActs < ActiveRecord::Migration[5.1]
  def change
    drop_table(:acts, if_exists: true, force: :cascade)
    create_table :acts do |t|
      t.string :name

      t.timestamps
    end
  end
end
