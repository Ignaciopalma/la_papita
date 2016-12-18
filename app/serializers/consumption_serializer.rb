class ConsumptionSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :supply_id, :consumption
end
