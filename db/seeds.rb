# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


drake = Artist.create(name: "drake", bio: "noting")
adele = Artist.create(name: "adele", bio: "hello everyone")
pop = Artist.create(name:"pop", bio: "best artist")

rock = Genre.create(name: "rock")
disco = Genre.create(name: "disco")
jazz = Genre.create(name: "jazz")



hello = Song.create(name: "hello",artist_id: adele.id, genre_id: rock.id)
smoke = Song.create(name: "smoke",artist_id: pop.id, genre_id: jazz.id)
shakir = Song.create(name: "shakir",artist_id: drake.id, genre_id: disco.id)


