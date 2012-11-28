# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  user = User.create( :name => "Heiki", :gender => "male", :admin => true, :email => "heiki123@hotmail.com", :password => "123456", :password_confirmation => "123456" )
  user = User.create( :name => "Nessa", :gender => "female", :email => "nessa123@hotmail.com", :password => "123456", :password_confirmation => "123456" )
  user = User.create( :name => "Hellolucky", :gender => "male", :email => "hellolucky123@hotmail.com", :password => "123456", :password_confirmation => "123456" )
  user = User.create( :name => "Chen", :gender => "male", :email => "chen123@hotmail.com", :password => "123456", :password_confirmation => "123456" )
  user = User.create( :name => "Tao", :gender => "male", :email => "tao123@hotmail.com", :password => "123456", :password_confirmation => "123456" )
  user = User.create( :name => "connsynn", :gender => "female", :email => "connsynn123@hotmail.com", :password => "123456", :password_confirmation => "123456" )
  user = User.create( :name => "Maggie", :gender => "female", :email => "maggie123@hotmail.com", :password => "123456", :password_confirmation => "123456" )

  puts "add 7 products"

  category = Category.create( :name => "Top" )
  category = Category.create( :name => "Bottom" )
  category = Category.create( :name => "Shoes" )
  category = Category.create( :name => "Bag" )
  category = Category.create( :name => "Accessory" )
  category = Category.create( :name => "Dress" )
  category = Category.create( :name => "Outer wear" )
  category = Category.create( :name => "Hat & Scaf" )

  puts "add 8 categories"

  product = Product.new
  product.productphoto = File.open('/Users/chacha198432/Desktop/temp/umbrella.png')
  product.user_id = 1
  product.category_id = 5
  product.save

  product = Product.new
  product.productphoto = File.open('/Users/chacha198432/Desktop/temp/scaf.png')
  product.user_id = 1
  product.category_id = 8
  product.save

  product = Product.new
  product.productphoto = File.open('/Users/chacha198432/Desktop/temp/top.png')
  product.user_id = 1
  product.category_id = 1
  product.save

  product = Product.new
  product.productphoto = File.open('/Users/chacha198432/Desktop/temp/hat1.png')
  product.user_id = 1
  product.category_id = 8
  product.save

  product = Product.new
  product.productphoto = File.open('/Users/chacha198432/Desktop/temp/hat.png')
  product.user_id = 1
  product.category_id = 8
  product.save


  puts "add 5 products"










