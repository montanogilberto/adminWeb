class CreateCourts < ActiveRecord::Migration[5.1]
  def change
    drop_table(:courts, if_exists: true, force: :cascade)
    create_table :courts do |t|
      t.string :name

      t.timestamps
    end
  end
end
