class CreateCustomerBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_blogs2 do |t|

      t.timestamps
    end
  end
end
