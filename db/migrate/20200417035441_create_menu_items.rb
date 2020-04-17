class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.bigint :menu_id
      t.bigint :menu_item_id
      t.string :menu_item_name
      t.float :menu_price
      t.integer :stock

      t.timestamps
    end
  end
end
