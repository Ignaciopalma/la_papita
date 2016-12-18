class OrderDetailSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :product, :quantity, :comments, :sub_total
end
