puts "Seeding DB:"
print "\n Création reussie: '.'"
print " - "
print " Déjà existant: '-'"
print " - "
print " Création echouée: 'X'"

Users.destroy_all

puts "\n\n Création de 1 Utilisateurs"

user1 = User.new(first_name:"ando",last_name:"alain",email:"andy@gmail.com",password: "Pbxk1984",url: nil, admin: true, image: nil, company:"A2RSII",number:"0679554022" ,details: "",cover_image: nil)

puts "\n\n Création d'une image pour profil Utilisateurs"

if user1.save
  user1.image.attach(io: open("https://res.cloudinary.com/dbtnehfrf/image/upload/v1619189911/vkf87wxq2a9imtiaixy7jkkf3kpw.png"), filename:'user1')
  print('.')
else
  user1 = User.where(email: "andy@gmail.com").first
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
  user1 = User.where(email: "andy@gmail.com").first
  if user1
    print('-')
  else
    print('X')
  end
end

puts "\n\n Création de 1 Utilisateurs"

user2 = User.new(first_name:"monsieur",last_name:"recruteur",email:"recruteur@gmail.com",password: "Pbxk1064",url: nil, admin: true, image: nil, company:"",number:"" ,details: "",cover_image: nil)

puts "\n\n Création d'une image pour profil Utilisateurs"

if user2.save
  user2.image.attach(io: open("https://res.cloudinary.com/dbtnehfrf/image/upload/v1619518363/placeholder-profile-b8495b869b9fef8b08071042cb38316f23dde78218cff73ceb5c18875bb82911_ngdhlu.jpg"), filename:'user2')
  print('.')
else
  user2 = User.where(email: "recruteur@gmail.com").first
  if user2
    print('-')
  else
    print('X')
  end
end

puts "\n\n Création d'une image cover pour profil recruteur"

if user2.save
  user2.cover_image.attach(io: open("https://res.cloudinary.com/dbtnehfrf/image/upload/v1607285576/6jzfketmz0hlm1txj9wvahrm8szp.jpg"), filename:'user2')
  print('.')
else
  user2 = User.where(email: "recruteur@gmail.com").first
  if user2
    print('-')
  else
    print('X')
  end
end
