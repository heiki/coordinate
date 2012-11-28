class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         :token_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible  :name, :gender, :admin, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :products
  has_many :send_photos, foreign_key: "sender_id", class_name: "Photo"
  has_many :receive_photos, foreign_key: "receiver_id", class_name: "Photo"
  
end
