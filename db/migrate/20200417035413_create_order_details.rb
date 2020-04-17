class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.bigint :order_id
      t.bigint :menu_item_id
      t.string :menu_item_name
      t.float :menu_price
      t.integer :quantity
      t.float :total

      t.timestamps
    end
  end
end
