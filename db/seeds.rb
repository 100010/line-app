# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
require 'bcrypt'
cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost

 User.create(
   [
     {
       email: "aaa@aaa.com",
       password_digest: BCrypt::Password.create("111111", cost: cost)
     },
     {
       email: "bbb@aaa.com",
       password_digest: BCrypt::Password.create("111111", cost: cost)
     },
     {
       email: "ccc@aaa.com",
       password_digest: BCrypt::Password.create("111111", cost: cost)
     },
     {
       email: "ddd@aaa.com",
       password_digest: BCrypt::Password.create("111111", cost: cost)
     },
     {
       email: "fff@aaa.com",
       password_digest: BCrypt::Password.create("111111", cost: cost)
     },{
       email: "ggg@aaa.com",
       password_digest: BCrypt::Password.create("111111", cost: cost)
     },
     {
       email: "hhh@aaa.com",
       password_digest: BCrypt::Password.create("111111", cost: cost)
     },
   ]
 )

 ChatRoom.create(
   [
     {
       user_id: User.first.id
     },
     {
       user_id: User.first.id
     },
     {
       user_id: User.first.id
     },
   ]
 )


 ChatRoomUser.create(
   [
     {
       user_id: User.first.id,
       chat_room_id: ChatRoom.first.id
     }
   ]
 )
