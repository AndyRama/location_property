puts "Seeding DB:"
print "\n Création reussie: '.'"
print " - "
print " Déjà existant: '-'"
print " - "
print " Création echouée: 'X'"
puts "\n\n Création de 1 Utilisateur"

andy = User.new(email:"andy@gmail.com", encrypted_password:"52KgrDYiewMgySx", first_name:"andy", last_name:"rama")
if andy.save
 print('.')
end


puts "\n Seeding terminé!"