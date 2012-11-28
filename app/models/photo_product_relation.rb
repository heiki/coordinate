class PhotoProductRelation < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :photo
  belongs_to :product
end
