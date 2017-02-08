# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



puts "Destroying massage"
Massage.destroy_all

puts "Destroying accompagnement"
Accompagnement.destroy_all

puts "Destroying user"
User.destroy_all

puts "Destroying prestation"
Prestation.destroy_all


puts "END DESTROY"


# -------------------------------- Massage --------------------------------- #
puts "Seeding massage "

rouler = Massage.create!(nom:"Rouler",description: "massage au huile de friture avec finition low kick",temps: 20,prix: 30)
frapper = Massage.create!(nom:"Frapper",description: "massage au huile de friture avec finition low kick",temps: 20,prix: 30)
presser = Massage.create!(nom:"Presser",description: "massage au huile de friture avec finition low kick",temps: 20,prix: 30)
caresser = Massage.create!(nom:"Caresser",description: "massage au huile de friture avec finition low kick",temps: 20,prix: 30)
puts "END"

puts "End seeding massage"
 # -------------------------------- Users  --------------------------------- #
puts "Seeding User"

# michel = User.create!(prenom: 'michel',nom: 'patoudatchi',address: "5 place de la bourse, bordeaux",phone:  , email:'michel@gmail.com',password: "1234soleil")
# albert = User.create!(prenom: 'albert',nom: 'roso',address: "10 rue amélie, paris",phone:  , email:'albert@gmail.com', password: "1234soleil")
# robert = User.create!(prenom: 'robert',nom: 'lamarche',address: "15 cours jean pénicaud, limoges",phone:  , email:'robert@gmail.com', password: "1234soleil")
# jean = User.create!(prenom: 'jean',nom: 'domingo',address: "20 cours jean pénicaud, limoges",phone:  , email:'jean@gmail.com', password: "1234soleil")
# fred = User.create!(prenom: 'fred',nom: 'florus',address: "25 cours jean pénicaud, limoges",phone:  , email:'fred@gmail.com', password: "1234soleil")

puts "END"

# -------------------------------- Accompagnement --------------------------------- #
puts "Seeding Accompagnement"

accompagnement1 = Accompagnement.create!(nom: "ecoute" , description:"lorem sep soy active", temps: 30, prix: 40)
accompagnement2 = Accompagnement.create!(nom: "conseil", description:"lorem sep soy active", temps: 40, prix: 60)
accompagnement3 = Accompagnement.create!(nom: "suivi", description:"lorem sep soy active", temps: 40, prix: 60)
accompagnement4 = Accompagnement.create!(nom: "soutien", description:"lorem sep soy active", temps: 30, prix: 40)


puts "END accompagnement"

# -------------------------------- Personnel --------------------------------- #
puts "Seeding personnel"

sandra = Personnel.create!(nom: "Montenegro", prenom: "Sandra", description:"une délicieux masseuse" ,adresse:"10 rue de mon cul 64110 ORTHEZ",phone: )
celia = Personnel.create!(nom: "Montenegro", prenom: "Celia",  description:"La plus belle et de loin" ,adresse:"10 rue de mon cul 64110 ORTHEZ",phone:)
puts "END"

# -------------------------------- Menu --------------------------------- #
# puts "Seeding Menu"

# menus_bagin = Menu.create!(foodtruck: bagin, name:'big bagel', description: "menu bagel complet avec salade", price_cents:'750')
# menus_westcoast = Menu.create!(foodtruck: westcoast, name:'big burger', description: "menu burger complet avec frites", price_cents:'1000')
# menus_eltacodeldiablo1 = Menu.create!(foodtruck: eltacodeldiablo, name:'Big Tacos', description: "Menu tacos complet avec accompagnement", price_cents:'1500', photo_url: "http://cdn-femina.ladmedia.fr/var/femina/storage/images/cuisine/idees-de-menus/pitas-burgers-tacos-les-sandwichs-de-l-ete/petits-pains-en-recettes-pitas-burgers-tacos/tacos-de-chorizo/3352016-1-fre-FR/Tacos-de-chorizo_current_diaporama.jpg")
# menus_eltacodeldiablo2 = Menu.create!(foodtruck: eltacodeldiablo, name:'Menu spécial Mexicain', description: "Menu tacos complet avec accompagnement et dessert", price_cents:'1300', photo_url: "http://cdn-femina.ladmedia.fr/var/femina/storage/images/cuisine/idees-de-menus/pitas-burgers-tacos-les-sandwichs-de-l-ete/petits-pains-en-recettes-pitas-burgers-tacos/tacos-de-chorizo/3352016-1-fre-FR/Tacos-de-chorizo_current_diaporama.jpg")


# puts "END Seeding Menu"

# -------------------------------- Menu Dishes--------------------------------- #
# puts "Seeding Menu Dishes"

# menus_dish_bagin = MenuDish.create!(menu: menus_bagin, dish: dish_salade)
# menus_dish_bagin = MenuDish.create!(menu: menus_bagin, dish: dish_coca)
# menus_dish_bagin = MenuDish.create!(menu: menus_bagin, dish: dish_bagel)
# menus_dish_westcoast = MenuDish.create!(menu: menus_westcoast, dish: dish_popcorn)
# menus_dish_westcoast = MenuDish.create!(menu: menus_westcoast, dish: dish_crepe)
# menus_dish_westcoast = MenuDish.create!(menu: menus_westcoast, dish: dish_burger)

# menus_dish_eltacodeldiablo1 = MenuDish.create!(menu: menus_eltacodeldiablo1, dish: dish_entree2)
# menus_dish_eltacodeldiablo1 = MenuDish.create!(menu: menus_eltacodeldiablo1, dish: dish_tacos4)
# menus_dish_eltacodeldiablo1 = MenuDish.create!(menu: menus_eltacodeldiablo1, dish: dish_dessert2)

# menus_dish_eltacodeldiablo2 = MenuDish.create!(menu: menus_eltacodeldiablo2, dish: dish_entree3)
# menus_dish_eltacodeldiablo2 = MenuDish.create!(menu: menus_eltacodeldiablo2, dish: dish_tacos2)
# menus_dish_eltacodeldiablo2 = MenuDish.create!(menu: menus_eltacodeldiablo2, dish: dish_dessert1)

# puts "END Seeding Menu"

# ------------------------- reservation ------------------------- #
# puts "Seeding Reservations"

# resa1 = Reservation.create!(foodtruck: bagin, user: michel, shift_datetime: DateTime.now + rand(2..30), review:'trop bon le bagel', mark:'4',payment_cents: '750',address: '30 place de la bourse, bordeaux')
# resa2 = Reservation.create!(foodtruck: bagin, user: albert, shift_datetime: DateTime.now + rand(2..30), review:'trop bon le burger', mark:'3',payment_cents: '1000',address: '15 rue amélie, paris')
# resa3 = Reservation.create!(foodtruck: westcoast, user: robert, shift_datetime: DateTime.now + rand(2..30), review:'trop bon le tacos', mark:'5',payment_cents: '800',address: '15 cours jean pénicaud, limoges')

# puts "END"

# -------------------------------- Order_lines --------------------------------- #
# puts "Seeding Order_lines"


# panier1 = OrderLine.create!(reservation: resa1, menu: menus_bagin, number_of_meals:"50", menu_price_cents: "750")
# panier2 = OrderLine.create!(reservation: resa2, menu: menus_bagin, number_of_meals:"80", menu_price_cents: "1000")
# panier3 = OrderLine.create!(reservation: resa3, menu: menus_bagin, number_of_meals:"100", menu_price_cents: "800")

# puts "END"
