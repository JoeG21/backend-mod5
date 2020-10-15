# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   DateTime: YYYY-MM-DD HH:MM:SS
User.destroy_all
UserOpp.destroy_all
Opp.destroy_all
Shelter.destroy_all

# Users
u1 = User.create({
    first_name: 'Joe', 
    last_name: 'Gomez', 
    email: 'joe@gmail.com',
    username: 'joeg',
     password_digest: '123', 
     age: 21
})
u2 = User.create({
    first_name:'Bob', 
    last_name: 'Doe',
    email: 'bob@gmail.com',
    username: 'bob1', 
    password_digest: '123',
     age: 30
})

# Admin
a1 = User.create({
    first_name:'Rick',
    last_name: 'Doe',
    email: 'rick@gmail.com',
    username: 'rick1',
    password_digest: '123',
    age: 40,
    admin: true
})

# Shelters
s1 = Shelter.create({
    name: 'BARC Volunteering',
    location: '2700 Evella St, Houston, TX 77026',
    img: 'hello world',
    phone: 123
})
s2 = Shelter.create({
    name: 'Star of Hope - Women & Family Emergency Shelter',
    location: '419 Dowling Street, Houston, TX 77003',
    img: 'hello world',
    phone: 7132222220
})
s3 = Shelter.create({
    name: 'Citizens For Animal Protection',
    location: '107 E 22nd St, Houston, TX 77008',
    img: 'hello world',
    phone: 2814970591
})
s4 = Shelter.create({
    name: 'Friends For Life',
    location: '17555 Katy Fwy, Houston, TX 77094',
    img: 'hello world',
    phone: 7138639835
})
s5 = Shelter.create({
    name: 'Volunteer Houston',
    location: '3303 Main St, Houston, TX 77002',
    img: 'hello world',
    phone: 2816561533
})
s6 = Shelter.create({
    name: 'Loaves & Fishes Soup Kitchen (Magnificat Houses)',
    location: '2009 Congress St, Houston, TX 77002',
    img: 'hello world',
    phone: 7135294231
})
s7 = Shelter.create({
    name: 'Houston SPCA',
    location: '7007 Old Katy Rd, Houston, TX 77024',
    img: 'hello world',
    phone: 7138697722
})
s8 = Shelter.create({
    name: 'The Beacon',
    location: '1212 Prairie St, Houston, TX 77002',
    img: 'hello world',
    phone: 7132209737
})
s9 = Shelter.create({
    name: 'Volunteers of America Texas',
    location: '4808 Yale St, Houston, TX 77018',
    img: 'hello world',
    phone: 7134600781
})
s10 = Shelter.create({
    name: 'Volunteers of America Texas',
    location: '4808 Yale St, Houston, TX 77018',
    img: 'hello world',
    phone: 7134600781
})
s11 = Shelter.create({
    name: 'Houston Humane Society',
    location: '14700 Almeda Rd, Houston, TX 77053',
    img: 'hello world',
    phone: 7134336421
})


# Opps
o1 = Opp.create({
    title: 'Serving',
    des: 'Serving food to the homeless',
    date: '2020-12-05 12:00:00', 
    howlong: 2, 
    shelter_id: s1.id
})
o2 = Opp.create({
    title: 'Cleaning',
    des: 'Need some help cleaning the area',
    date: '2021-08-21 13:00:00', 
    howlong: 4, 
    shelter_id: s1.id
})
o3 = Opp.create({
    title: 'Serving',
    des: 'Serving food to the homeless and in need',
    date: '2020-12-05 10:00:00', 
    howlong: 3, 
    shelter_id: s2.id
})


# UserOpps
uo1 = UserOpp.create({
    user_id: u1.id,
    opp_id: o1.id
})