# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

paulina = User.create!(email: "paulina@ry.com", password: 'password')
paulina.roles = [:company_admin]
paulina.save

westy = User.create!(email: "westy@ry.com", password: 'password')
westy.roles = [:group_admin]
westy.save 

alexandra = User.create!(email: "alexandra@ry.com", password: 'password')
alexandra.roles = [:group_admin]
alexandra.save 

coti = User.create!(email: "coti@ry.com", password: 'password')
coti.roles = [:city_admin]
coti.save 

jo = User.create!(email: "jose@ry.com", password: 'password')
jo.roles = [:city_admin]
jo.save

libertatem = Group.create!(name: 'Libertatem', description: 'Starting Sept 2016 End Aug 2017')

libertatem.users << paulina
libertatem.users << westy
libertatem.users << alexandra
libertatem.users << coti
libertatem.users << jo

