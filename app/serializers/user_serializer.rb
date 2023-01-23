class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :email, :address, :phone, :cart

  def cart 
    self.object.cart.items
  end

end
