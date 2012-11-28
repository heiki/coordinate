class Photo < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :photo_product_relations 
  has_many :products, :through => :photo_product_relations 
  
  belongs_to :sender, :foreign_key => :sender_id, :class_name => "User"
  belongs_to :receiver, :forien_key => :receiver_id, :class_name => "User"
end
