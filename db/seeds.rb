# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Shooting.reset_pk_sequence
Fashiongirl.reset_pk_sequence
Photographer.reset_pk_sequence
Shooting.destroy_all
Fashiongirl.destroy_all
Photographer.destroy_all




alisson = Fashiongirl.create(name: "Alisson", age: 21, location: 'Paris', portfolio: 'https://linda-hendricks.com/')
dio = Fashiongirl.create(name: 'Dio', age: 20, location: 'Paris', portfolio: 'https://linda-hendricks.com/')
stella = Fashiongirl.create(name: 'Stella', age: 22, location: 'Paris', portfolio: 'https://linda-hendricks.com/')
melissa = Fashiongirl.create(name: 'Melissa', age: 26, location: 'Paris', portfolio: 'https://linda-hendricks.com/')

sami = Photographer.create(name: 'Sami', location:'Paris', portfolio: "https://i.pinimg.com/564x/f8/1d/91/f81d9195c9fcad824d13c1395674278f.jpg", popularity: 5)
ange = Photographer.create(name: 'Ange', location:'Paris',portfolio: "https://i.pinimg.com/564x/1f/ce/93/1fce9315f5c0823456ac123cebe56667.jpg", popularity: 4)
nicolas = Photographer.create(name: 'Nicolas', location:'Paris', portfolio: "https://i.pinimg.com/564x/1b/be/bd/1bbebd1f4f6f0eb81b4f0e6eff5025b5.jpg", popularity: 1)
fred = Photographer.create(name: 'Fred', location:'Paris', portfolio: "https://i.pinimg.com/564x/26/25/30/2625302c692dd5250ecf713e5723c5ee.jpg", popularity: 2)
alan = Photographer.create(name: 'Alan', location:'Paris', portfolio: "https://i.pinimg.com/564x/4e/b7/d2/4eb7d20a70f294132658571384e66200.jpg", popularity: 3)


Shooting.create(date: "12 Novembre", location:"Paris", fashiongirl_id: alisson.id, photographer_id: sami.id)
Shooting.create(date: "22 Avril", location:"Paris", fashiongirl_id: alisson.id, photographer_id: ange.id)
Shooting.create(date: "22 Aout",location:"Paris", fashiongirl_id: stella.id, photographer_id: alan.id)
Shooting.create(date: "22 Janvier",location:"Paris", fashiongirl_id: dio.id, photographer_id: sami.id)
Shooting.create(date: "5 Novembre",location:"Paris", fashiongirl_id: melissa.id, photographer_id: nicolas.id)
Shooting.create(date: "2 Mars",location:"Paris", fashiongirl_id: melissa.id, photographer_id: fred.id)


puts 'I am Seeded Linda! You got this!'