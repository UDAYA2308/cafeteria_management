json.extract! order_detail, :id, :order_id, :menu_item_id, :menu_item_name, :menu_price, :quantity, :total, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
