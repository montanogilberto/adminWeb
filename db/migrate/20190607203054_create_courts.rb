class CreateCourts < ActiveRecord::Migration[5.1]
  def change
    drop_table :courts
    create_table :courts do |t|
      t.string :name

      t.timestamps
    end
  end
end
