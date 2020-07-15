# Add seed data here. Seed your database with `rake db:seed`
adele = Artist.create(name: "Adele")

roll = Song.create(name: "Rolling in the Deep", artist: adele)

contemporary = Genre.create(name: "contemporary")
