class CreateMatters < ActiveRecord::Migration[5.1]
  def change
    drop_table(:matters, if_exists: true, force: :cascade)
    create_table :matters do |t|
      t.string :name

      t.timestamps
    end
  end
end
