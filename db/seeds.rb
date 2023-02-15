# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sneaker.destroy_all
User.destroy_all
Favorite.destroy_all

s1 = Sneaker.create(name: "ultra boost 22 running shoes", price: 190, image: "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/2ca56ffeb5554f9dad08af70010d84c3_9366/Ultraboost_22_Running_Shoes_Black_HQ8593_01_standard.jpg")
s2 = Sneaker.create(name: "Daily 3.0 shoes", price: 65, image: "https://assets.adidas.com/images/h_2000,f_auto,q_auto,fl_lossy,c_fill,g_auto/00097f2522784e6d96b0aba400aa87a1_9366/Daily_3.0_Shoes_Grey_FW3270_01_standard.jpg")
s3 = Sneaker.create(name: "Ultra 4DFWD running shoes", price: 220, image: "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/b9bd6dc6bbb84a8faa3dae8400320b3e_9366/Ultra_4DFWD_Running_Shoes_Black_GX6632_01_standard.jpg")
s4 = Sneaker.create(name: "Terrex soul stride trail running shoes", price: 80, image: "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/d92e3f542ff94ce492afad4e008091cc_9366/TERREX_Soulstride_Trail_Running_Shoes_Black_FY9214_01_standard.jpg")

u1 = User.create(username:"Hull House", password: "123", email: "Janeadams@gmail.com")
u2 = User.create(username:"little rocket man", password: "123", email: "littlerocketman@gmail.com")
u3 = User.create(username:"Winnie the Pooh", password: "123", email: "Winniethepooh@gmail.com")

m1 = Favorite.create(user_id: u1, sneaker_id: s3, likes: true)
m2 = Favorite.create(user_id: u2, sneaker_id: s4, likes: true)
m3 = Favorite.create(user_id: u3, sneaker_id: s1, likes: false)
m4 = Favorite.create(user_id: u1, sneaker_id: s2, likes: true)
m5 = Favorite.create(user_id: u3, sneaker_id: s4, likes: false)
m6 = Favorite.create(user_id: u2, sneaker_id: s2, likes: false)
