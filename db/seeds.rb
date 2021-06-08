# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Activity.destroy_all

puts "creating activities..."

# 1st activity
url1 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153975/hikes_jkh2hd.jpg"

activity1 = Activity.create(
   title: "A Unique Hike",
   start_date: Date.today + 23,
   end_date: Date.today + 24,
   location: "Sintra"
  )
file = URI.open(url1)
activity1.photo.attach(io: file, filename: url1, content_type: 'image/jpg')
activity1.save!


# 2 activity
url2 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623154761/drinks_eegqen.jpg"
activity2 = Activity.create!(
   title: "Friday Drinks",
   start_date: Date.today + 9,
   end_date:  Date.today + 9,
   location: "Bairro Alto, Lisbon",
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
   location: "Cais do Sodre, Lisbon",
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
   location: "Santos, Lisbon",
  )
file = URI.open(url4)
activity4.photo.attach(io: file, filename: url4, content_type: 'image/jpg')
activity4.save!


puts "finished seeds"

# # 5 activity
url5 = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153973/japanese_ohf1bi.jpg"
activity = Activity.create!(
 title: "Learn Japanese language",
 start_date: Date.today + 21,
 end_date: Date.today + 21,
 location: "Lapa, Lisbon",
 )
file = URI.open(url)
activity5.photo.attach(io: file, filename: url5, content_type: 'image/jpg')
activity5.save!


# # 6 activity
# url = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153973/foodie_c3737h.jpg"
# activity = Activity.create!(
#    title: "Tipsy Foodies in Lisbon",
#    start_date: Date.today + 26,
#    end_date: Date.today + 26,
#    location: "Bairro Alto, Lisbon",
#   )
# file = URI.open(url)
# activity.photo.attach(io: file, filename: url, content_type: 'image/jpg')
# activity.save!

# # 7 activity
# url = "https://res.cloudinary.com/dseegocw7/image/upload/v1623159541/mason-dahl--7AxXbZekDE-unsplash_gpyemx.jpg"
# activity = Activity.create!(
#    title: "Friday Evening Late Picnic",
#    start_date: Date.today + 2,
#    end_date: Date.today + 2,
#    location: "Estrela, Lisbon",
#   )
# file = URI.open(url)
# activity.photo.attach(io: file, filename: url, content_type: 'image/jpg')
# activity.save!


# # 8 activity
# url = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153972/volley_osqdrr.jpg"
# activity = Activity.create!(
#    title: "Grass Volleyball",
#    start_date: Date.today + 8,
#    end_date: Date.today + 8,
#    location: "Carcavellos, Lisbon",
#   )
# file = URI.open(url)
# activity.photo.attach(io: file, filename: url, content_type: 'image/jpg')
# activity.save!


# # 9 activity
# url = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153972/picnic_yqlzjb.jpg"
#    activity = Activity.create!(
#    title: "Pilates Mat outdoors",
#    start_date: Date.today + 10,
#    end_date: Date.today + 10,
#    location: "Caparica, Lisbon",
#   )
# file = URI.open(url)
# activity.photo.attach(io: file, filename: url, content_type: 'image/jpg')
# activity.save!


# # 10 activity
# url = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153972/surf_q0dip5.jpg"
#    activity = Activity.create!(
#    title: "Let´s go surfing on the weekend !",
#    start_date:  Date.today + 9,
#    end_date:  Date.today + 9,
#    location: "Rato, Lisbon",
#   )
# file = URI.open(url)
# activity.photo.attach(io: file, filename: url, content_type: 'image/jpg')
# activity.save!



# # 11 activity
# url = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153972/cinema_mpnxah.jpg"
#    activity = Activity.create!(
#    title: "Movie night",
#    start_date:  Date.today + 24,
#    end_date:   Date.today + 24,
#    location: "Santos, Lisbon",
#   )
# file = URI.open(url)
# activity.photo.attach(io: file, filename: url, content_type: 'image/jpg')
# activity.save!


# # 12 activity
# url = "https://res.cloudinary.com/dseegocw7/image/upload/v1623153972/concert_dnikxz.jpg"
#      activity = Activity.create!(
#    title: "Thursday Night Weekly Jam",
#    start_date:  Date.today + 27,
#    end_date:  Date.today + 27,
#    location: "Santos, Lisbon",
#   )
# file = URI.open(url)
# activity.photo.attach(io: file, filename: url, content_type: 'image/jpg')
# activity.save!
