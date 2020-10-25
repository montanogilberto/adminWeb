class DropTablePostalCodes < ActiveRecord::Migration[5.1]
  def change
    drop_table :postal_codes, force: :cascade
  end
end
