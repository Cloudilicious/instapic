# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

susan = User.create(email: 'susan@example.com', password_hash: '123')
bob = User.create(email: 'bob@example.com', password_hash: '456')
alice = User.create(email: 'alice@example.com', password_hash: '789')


susan_profile = Profile.create(first_name: 'Susan', last_name: 'Sarandon', phone: '98765432', user: susan)
# user: susan is the same as saying user_id = susan.id
bob_profile = Profile.create(first_name: 'Bob', last_name: 'By', phone: '91234567', user: bob)
alice_profile = Profile.create(first_name: 'Alice', last_name: 'Nivens', phone: '91234563', user: alice)



photo1 = Photo.create(description: 'Doge', asset_url: 'https://images.unsplash.com/photo-1453365607868-7deed8cc7d26?dpr=2&auto=compress,format&crop=entropy&fit=crop&w=568&h=379&q=80&cs=tinysrgb', user: susan)
photo2 = Photo.create(description: 'Bambi', asset_url: 'https://unsplash.com/collections/149043/horn-and-hoof?photo=DVcODHQT2xo', user: susan)
photo3 = Photo.create(description: 'Alistair', asset_url: 'https://unsplash.com/collections/149043/horn-and-hoof?photo=dbRzRdHfXho', user: bob)
photo4 = Photo.create(description: 'Sir Meowington', asset_url: 'https://unsplash.com/collections/149043/horn-and-hoof?photo=FT9SsFEXqF4', user: bob)

PhotoTaggedUser.create(photo: photo1, user: bob)
PhotoTaggedUser.create(photo: photo2, user: susan)
PhotoTaggedUser.create([
  { photo: photo3, user: susan },
  { photo: photo3, user: bob }
  ])

UserFollowerRelationship.create(user: susan, follower: bob)
UserFollowerRelationship.create(user: susan, follower: alice)
UserFollowerRelationship.create(user: bob, follower: alice)
