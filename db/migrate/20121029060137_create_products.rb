class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :user
      t.belongs_to :category
      t.string :productphoto
      t.timestamps
    end
  end
end
