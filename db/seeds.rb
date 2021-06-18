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
user = User.create(email: "patricia@gmail.com", password: "123456")

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
   description: "Let's meet in the Mount Loretto Unique Area parking lot. We'll walk the grasslands and the beach, then head over to the food trucks for a bite to eat.",
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
   description: "Let's gather again for drinks and a chat.",
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
   description: "Hey, I would love to meet someone that also loves to dance. I've been thinking about doing dance class for ages! Looking forward to meeting you.",
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
   description: "The program is about mindful breathing and gentle core work and balance poses, ending with relaxation. Would love a buddy to join me.",
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
 description: "I would love to find a buddy that can teach me a bit of Japanese around a drink or a coffee. I'm from France, so I could also exchange some French lessons.",
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
 description: "Whether you're simply an enthusiastic diner with no clue how to boil an egg or a budding chef who could give Gordon Ramsay a run for his money, this activity is for YOU, looking forward to meeting someone for this activity.",
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
description: "Come and join me for a fun and relaxing sunset picnic. Bring some drinks, snacks, games, whatever you like.",
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
description: "Do you fancy playing grass-volleyball on a sunny evening with nice people? I'm looking for a teammate!",
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
description: "I am looking for a buddy to join a Pilates class with me, this Thursday. Hope you can join.",
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
description: "Hey buddy, I will go for the first time surfing in Caparica this weekend and I would love to have some to join me on this adventure.",
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
description: "I would love to go to the cinema this weekend, there is amazing programming about all black and white movies, if someone would love to join.",
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
description: "Hello! I'm a big fan of music. My favorite band will play this Thursday and would love someone to join me.",
start_date:  Date.today + 27,
end_date:  Date.today + 27,
location: "Rua de São Bernardo 33, Santos, Lisbon",
theme: entertainment,
   user: admin
)
file = URI.open(url12)
activity12.photo.attach(io: file, filename: url12, content_type: 'image/jpg')
activity12.save!


puts "new activities uploading..."

url13 = "https://res.cloudinary.com/dseegocw7/image/upload/v1624006882/michael-discenza-MxfcoxycH_Y-unsplash_p5na9l.jpg"
activity13 = Activity.create!(
title: "Drinks on a rooftop",
description: "Lets have some drinks on a rooftop!",
start_date:  Date.today + 2,
end_date:  Date.today + 2,
location: "Rua de São Bernardo 33, Santos, Lisbon",
theme: nightlife,
   user: admin
)
file = URI.open(url13)
activity13.photo.attach(io: file, filename: url13, content_type: 'image/jpg')
activity13.save!


url14 = "https://res.cloudinary.com/dseegocw7/image/upload/v1624006898/long-truong-Y5PXVs1LpY4-unsplash_qaqoxx.jpg"
activity14 = Activity.create!(
title: "Lux fragil on saturday",
description: "I would love to go to this nightclub that we call Lux Fragil, someone is keen?
",
start_date:  Date.today + 8,
end_date:  Date.today + 8,
location: " Av. Infante D. Henrique a Sta Apolónia Cais da Pedra, Armazém A, Lisboa",
theme: nightlife,
   user: admin
)
file = URI.open(url14)
activity14.photo.attach(io: file, filename: url14, content_type: 'image/jpg')
activity14.save!


url15 = "https://res.cloudinary.com/dseegocw7/image/upload/v1624006888/humphrey-muleba-cUUvJlhiceU-unsplash_ojkyy5.jpg"
activity15 = Activity.create!(
title: "Pool party at night!",
description: "I've got two invitation for this pool party on friday it's on the top of a bar, who wants to come? ",
start_date:  Date.today + 2,
end_date:  Date.today + 2,
location: "Rua de São Bernardo 33, Santos, Lisbon",
theme: nightlife,
   user: admin
)
file = URI.open(url15)
activity15.photo.attach(io: file, filename: url15, content_type: 'image/jpg')
activity15.save!

url16 = "https://res.cloudinary.com/dseegocw7/image/upload/v1624006893/emiliano-vittoriosi-5kWpPKOJSbE-unsplash_lzsik2.jpg"
activity16 = Activity.create!(
title: "Clubbing in Alfama!",
description: "This new club has opened, I want to check there!
",
start_date:  Date.today + 19,
end_date:  Date.today + 19,
location: "Praça do Comércio 72, 1100-413 Lisbonne",
theme: nightlife,
   user: admin
)
file = URI.open(url16)
activity16.photo.attach(io: file, filename: url16, content_type: 'image/jpg')
activity16.save!

url17 = "https://res.cloudinary.com/dseegocw7/image/upload/v1624006878/moritz-mentges-Z40sav8IYqQ-unsplash_yx7ugd.jpg"
activity17 = Activity.create!(
title: "Night out electro club",
description: "A new club has just opened in town, who wants to try?",
start_date:  Date.today + 7,
end_date:  Date.today + 7,
location: "Rua de São Bernardo 33, Santos, Lisbon",
theme: nightlife,
   user: admin
)
file = URI.open(url17)
activity17.photo.attach(io: file, filename: url17, content_type: 'image/jpg')
activity17.save!

url18 = "https://res.cloudinary.com/dseegocw7/image/upload/v1624007158/danny-howe-bn-D2bCvpik-unsplash_rtnkfk.jpg"
activity18 = Activity.create!(
title: "Night out in Lisbon",
description: "Hey buddy, there is this new DJ playing,... let's join?",
start_date:  Date.today + 19,
end_date:  Date.today + 19,
location: "Rua de São Bernardo 33, Santos, Lisbon",
theme: nightlife,
   user: admin
)
file = URI.open(url18)
activity18.photo.attach(io: file, filename: url18, content_type: 'image/jpg')
activity18.save!


url19 = "https://res.cloudinary.com/dseegocw7/image/upload/v1624006904/kike-vega-F2qh3yjz6Jk-unsplash_wmaqao.jpg"
activity19 = Activity.create!(
title: "Yoga on the beach",
description: "Let's do yoga on the beach",
start_date:  Date.today + 9,
end_date:  Date.today + 9,
location: "Caparica",
theme: wellness,
   user: admin
)
file = URI.open(url19)
activity19.photo.attach(io: file, filename: url19, content_type: 'image/jpg')
activity19.save!

url20 = "https://res.cloudinary.com/dseegocw7/image/upload/v1624006904/kike-vega-F2qh3yjz6Jk-unsplash_wmaqao.jpg"
activity20 = Activity.create!(
title: "Baraza yoga for beginners",
description: "Wanna try this new studio with someone!",
start_date:  Date.today + 2,
end_date:  Date.today + 2,
location: "Caparica",
theme: wellness,
   user: admin
)
file = URI.open(url20)
activity20.photo.attach(io: file, filename: url20, content_type: 'image/jpg')
activity20.save!

url21 = "https://res.cloudinary.com/dseegocw7/image/upload/v1624006913/zen-bear-yoga-IVf7hm88zxY-unsplash_y5af4e.jpg"
activity21 = Activity.create!(
title: "Baraza yoga for beginners",
description: "Wanna try this new studio with someone!",
start_date:  Date.today + 8,
end_date:  Date.today + 8,
location: "Caparica",
theme: wellness,
   user: admin
)
file = URI.open(url21)
activity21.photo.attach(io: file, filename: url21, content_type: 'image/jpg')
activity21.save!

url22 = "https://res.cloudinary.com/dseegocw7/image/upload/v1624006929/mr-tt-xb0wLfZH9Zo-unsplash_ncwjfg.jpg"
activity22 = Activity.create!(
title: "Exhibition of a new artist",
description: "Pablo Elero is doing a Exhibition, would love to go with someone!",
start_date:  Date.today + 5,
end_date:  Date.today + 5,
location: "Lisbon",
theme: art,
   user: admin
)
file = URI.open(url22)
activity22.photo.attach(io: file, filename: url22, content_type: 'image/jpg')
activity22.save!

url23 = "https://res.cloudinary.com/dseegocw7/image/upload/v1624006932/debby-hudson-MzSqFPLo8CE-unsplash_nfwtth.jpg"
activity23 = Activity.create!(
title: "Painting class with someone",
description: "Hey guys, I am looking for someone to go on a painting class with me. ",
start_date:  Date.today + 5,
end_date:  Date.today + 5,
location: "Av. Afonso de Albuquerque, S. João de Caparica, 2825-450 Costa da Caparica",
theme: art,
   user: admin
)
file = URI.open(url23)
activity23.photo.attach(io: file, filename: url23, content_type: 'image/jpg')
activity23.save!

puts "finished seeds"
