class CreatePostalCodes < ActiveRecord::Migration[5.1]
  def change
    drop_table(:postal_codes, if_exists: true)
  end
end
