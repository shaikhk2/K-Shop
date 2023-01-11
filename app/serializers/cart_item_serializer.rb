class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :cart
  has_one :item
end
