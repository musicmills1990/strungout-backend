# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Marc', email: "marc@marc.com", password: "password", address: "123 Street st. New York NY 10030", player_type: "outdoor festival performer", plan: "premium", pay_schedule: "monthly")
Guitar.create(guitar_type: "accoustic", brand: "gibson", model: 'CD-140SCE', color: "red", user_id: 1)
StringPack.create(guage: 'light', brand: "D'addario", model: "XL110", price: 5.50, user_id: 1)
