class CreatePurchaseorders < ActiveRecord::Migration[5.0]
  def change
    create_table :purchaseorders do |t|
      t.integer :orderno
      t.string :supplier
      t.text :description
      t.integer :cost

      t.timestamps
    end
  end
end
