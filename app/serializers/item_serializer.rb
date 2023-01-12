class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image, :color, :size, :category_id, :category_name
  

  def category_name
    # byebug
    self.object.category.name
  end

  def size
    size = self.object.size
    return JSON.parse(size)
  end

end
