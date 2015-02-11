class ItemSerializer < ActiveModel::Serializer
  embed :ids
  has_one :grocery_list
  attributes :id, :name, :quantity
end
