class EndShiftSerializer < ActiveModel::Serializer
  attributes :id, :cashier_name, :cash, :debit, :credit, :agreement
end
