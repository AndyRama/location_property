puts "Seeding DB:"
print "\n Création reussie: '.'"
print " - "
print " Déjà existant: '-'"
print " - "
print " Création echouée: 'X'"

puts "\n\n Création de 1 Utilisateurs"

User.destroy_all
Property.destroy_all

user1 = User.new(first_name:"ando",last_name:"alain",email:"andrew@gmail.com",password: "Pbxk1064",url: nil, admin: true, image: nil, company:"A2RSII",number:"0679554022" ,details: "",cover_image: nil)

puts "\n\n Création d'une image pour profil Utilisateurs"

if user1.save
  user1.image.attach(io: open("https://res.cloudinary.com/dbtnehfrf/image/upload/v1619189911/vkf87wxq2a9imtiaixy7jkkf3kpw.png"), filename:'user1')
  print('.')
else
  user1 = User.where(email: "andrew@gmail.com").first
  if user1
    print('-')
  else
    print('X')
  end
end

puts "\n\n Création d'une image cover pour profil Utilisateurs"

if user1.save
  user1.cover_image.attach(io: open("https://res.cloudinary.com/dbtnehfrf/image/upload/v1619106936/og1hrs3zmzr65qre38sjnu205p8n.jpg"), filename:'user1')
  print('.')
else
  user1 = User.where(email: "andrew@gmail.com").first
  if user1
    print('-')
  else
    print('X')
  end
end

# puts "\n\n Création d'une propriété"

# property1 = Property.new
#    {
#     name: "Villa Fin2 de Alicante",
#     address: "21 rue des myosotis 33700 Merignac",
#     price: 1000000,
#     rooms: 7,
#     bathrooms: 3,
#     parking_spaces: 3,
#     for_sale: true,
#     status: "available",
#     # available_date: Mon 30 Apr 2021 00:00:00.000000000 UTC +00:00,
#     details:
#       "\r\n\r\nSpacious villa with a centre focus on an outdoor pool. Perfect for those hot sunny days.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n",
#     photo:nil,
#     user_id:28
#  }

# if property1.save
#     print('.')
# else
#     print('-')
# end

# puts "\n\n Création d'une image cover pour la propriété"

# if property1.save!
#   property1.photo.attach(io: open("https://res.cloudinary.com/dbtnehfrf/image/upload/v1619168770/oojvlbilem6ua2l7tu1g6nf3h2y9.jpg"), filename:'property1')
#   print('.')
# else
#   property1 = Property.where(name: "Villa Fin2 de Alicante").first
#   if property1
#     print('-')
#   else
#     print('X')
#   end
# end