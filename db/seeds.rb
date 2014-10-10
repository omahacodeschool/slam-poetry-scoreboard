# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)'
Master.create(email:"grandmasterflash@slam.com", password:"password", password_confirmation:"password")

poets = Poet.create([{ name: 'Franny', photo: "/uploads/poet/photo/2/Franny.jpg"}, {name: 'Shane', photo: "/uploads/poet/photo/4/shane-koyczan-2012"}, {name: 'Anonymous', photo: "/uploads/poet/photo/3/thumb_Poetry-Slam" }, {name: 'Maggie', photo: "/uploads/poet/photo/5/Maggie_ESTEP-obit-master675"}])