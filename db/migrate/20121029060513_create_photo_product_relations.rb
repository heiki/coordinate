class CreatePhotoProductRelations < ActiveRecord::Migration
  def change
    create_table :photo_product_relations do |t|
      t.belongs_to :photo
      t.belongs_to :product
      t.timestamps
    end
  end
end
