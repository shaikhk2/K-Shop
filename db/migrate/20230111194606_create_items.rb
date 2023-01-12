class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :description
      t.string :image
      t.string :color
      t.string :size
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
