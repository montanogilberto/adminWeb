class CreateExpedients < ActiveRecord::Migration[5.1]
  def change
    drop_table(:expedients, if_exists: true)
    create_table :expedients do |t|
      t.string :noExpedient
      t.date :year
      t.boolean :active
      t.string :actor
      t.string :defendant
      t.money :fee
      t.money :payment
      t.money :saldo
      t.references :customer, foreign_key: true
      t.references :court, foreign_key: true
      t.references :district, foreign_key: true
      t.references :act, foreign_key: true
      t.references :matter, foreign_key: true
      t.references :judgment, foreign_key: true

      t.timestamps
    end
  end
end
