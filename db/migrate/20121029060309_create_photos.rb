class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :sender
      t.belongs_to :receiver
      t.timestamps
    end
  end
end
