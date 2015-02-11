class GroceryListSerializer < ActiveModel::Serializer
  embed :ids, include: true
  has_many :items
  attributes :id, :name, :description
end
