class CreateJudgments < ActiveRecord::Migration[5.1]
  def change
    create_table :judgments do |t|
      t.string :name

      t.timestamps
    end
  end
end
