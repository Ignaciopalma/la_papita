class OrderSerializer < ActiveModel::Serializer
  attributes :id, :detail, :payment_method, :total
end
