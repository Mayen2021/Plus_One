# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Activity.destroy_all
Theme.destroy_all
Profile.destroy_all
User.destroy_all
Chatroom.destroy_all
Message.destroy_all

puts "create user"

admin = User.create(email: "john.doe@gmail.com", password: "123456")

puts "create Chatroom"
chatroom = Chatroom.create(name: "chat", user: admin)

puts "create the themes"

sport = Theme.create(name:"sport")
art = Theme.create(name:"art")
drinks = Theme.create(name:"drinks")
nightlife = Theme.create(name:"nightlife")
language_exchange = Theme.create(name:"language-exchange")
wellness = Theme.create(name:"wellness")
entertainment = Theme.create(name:"entertainment")
dance = Theme.create(name:"dance")
food = Theme.create(name:"food")
outdoor = Theme.create(name:"outdoor")


puts "creating activities..."


# 1st activity
url1 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153975/hikes_jkh2hd.jpg"

activity1 = Activity.create(
   title: "A Unique Hike",
   start_date: Date.today + 23,
   end_date: Date.today + 24,
   location: "Rua das Flores, Lisboa",
   theme: sport,
   user: admin
  )
puts "one created"
file = URI.open(url1)
activity1.photo.attach(io: file, filename: url1, content_type: 'image/jpg')
activity1.save!


# 2 activity
url2 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623154761/drinks_eegqen.jpg"
activity2 = Activity.create!(
   title: "Friday Drinks",
   start_date: Date.today + 9,
   end_date:  Date.today + 9,
   location: "Rua de S. Paulo, Lisboa",
   theme: drinks,
   user: admin
  )

file = URI.open(url2)
activity2.photo.attach(io: file, filename: url2, content_type: 'image/jpg')
activity2.save!


# 3 activity
url3 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153973/dance_jdosqy.jpg"
activity3 = Activity.create!(
   title: "Free dance class",
   start_date:  Date.today + 13,
   end_date: Date.today + 13,
   location: "R. dos Remolares 34, 1200-371 Lisboa",
   theme: dance,
   user: admin
  )
file = URI.open(url3)
activity3.photo.attach(io: file, filename: url3, content_type: 'image/jpg')
activity3.save!

# 4 activity
url4 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153974/yoga_bnpdtz.jpg"
activity4 = Activity.create!(
   title: "Saturday yoga",
   start_date: Date.today + 16,
   end_date:  Date.today + 16,
   location: "R. Gaivotas 17, 1200-719 Lisboa",
   theme: wellness,
   user: admin
  )
file = URI.open(url4)
activity4.photo.attach(io: file, filename: url4, content_type: 'image/jpg')
activity4.save!



# # 5 activity
url5 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153973/japanese_ohf1bi.jpg"
activity5 = Activity.create!(
 title: "Learn Japanese language",
 start_date: Date.today + 21,
 end_date: Date.today + 21,
 location: "Rua Santos-O-Velho, Lisboa",
 theme: language_exchange,
   user: admin
 )
file = URI.open(url5)
activity5.photo.attach(io: file, filename: url5, content_type: 'image/jpg')
activity5.save!


# # 6 activity
url6 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153973/foodie_c3737h.jpg"
activity6 = Activity.create!(
 title: "Tipsy Foodies in Lisbon",
 start_date: Date.today + 26,
 end_date: Date.today + 26,
 location: "Rua Nova da Piedade,Lisboa",
 theme: food,
   user: admin
)
file = URI.open(url6)
activity6.photo.attach(io: file, filename: url6, content_type: 'image/jpg')
activity6.save!

# # 7 activity
url7 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623159541/mason-dahl--7AxXbZekDE-unsplash_gpyemx.jpg"
activity7 = Activity.create!(
title: "Friday Evening Picnic",
start_date: Date.today + 2,
end_date: Date.today + 2,
location: "Rua das Flores de Santa Cruz, Lisboa",
theme: outdoor,
   user: admin
)
file = URI.open(url7)
activity7.photo.attach(io: file, filename: url7, content_type: 'image/jpg')
activity7.save!


# # 8 activity
url8 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153972/volley_osqdrr.jpg"
activity8 = Activity.create!(
title: "Grass Volleyball",
start_date: Date.today + 8,
end_date: Date.today + 8,
location: "Rua de São Bento, Lisboa",
theme: sport,
   user: admin
)
file = URI.open(url8)
activity8.photo.attach(io: file, filename: url8, content_type: 'image/jpg')
activity8.save!


# # 9 activity
url9 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153972/picnic_yqlzjb.jpg"
activity9 = Activity.create!(
title: "Pilates Mat outdoors",
start_date: Date.today + 10,
end_date: Date.today + 10,
location: "2825-412 Costa da Caparica",
theme: wellness,
   user: admin
)
file = URI.open(url9)
activity9.photo.attach(io: file, filename: url9, content_type: 'image/jpg')
activity9.save!


# # 10 activity
url10 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153972/surf_q0dip5.jpg"
activity10 = Activity.create!(
title: "Let´s go surfing!",
start_date:  Date.today + 9,
end_date:  Date.today + 9,
location: "2825-412 Costa da Caparica",
theme: sport,
   user: admin
)
file = URI.open(url10)
activity10.photo.attach(io: file, filename: url10, content_type: 'image/jpg')
activity10.save!



# # 11 activity
url11 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153972/cinema_mpnxah.jpg"
activity11 = Activity.create!(
title: "Movie night",
start_date:  Date.today + 24,
end_date:   Date.today + 24,
location: "Largo do Corpo Santo , Lisbon",
theme: entertainment,
   user: admin
)
file = URI.open(url11)
activity11.photo.attach(io: file, filename: url11, content_type: 'image/jpg')
activity11.save!


# # 12 activity
url12 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153972/concert_dnikxz.jpg"
activity12 = Activity.create!(
title: "Thursday Weekly Jam",
start_date:  Date.today + 27,
end_date:  Date.today + 27,
location: "Rua de São Bernardo 33, Santos, Lisbon",
theme: entertainment,
   user: admin
)
file = URI.open(url12)
activity12.photo.attach(io: file, filename: url12, content_type: 'image/jpg')
activity12.save!


puts "finished seeds"
