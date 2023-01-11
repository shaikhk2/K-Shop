class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :email, :address, :phone

  has_one :cart
end
