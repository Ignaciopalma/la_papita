json.extract! order, :id, :detail, :payment_method, :total, :created_at, :updated_at
json.url order_url(order, format: :json)