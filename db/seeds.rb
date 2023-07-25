puts "🌱 Seeding spices..."

rose = Plant.find_by(species: "Roshrys")
lily = Plant.find_by(species: "Lilispecies")

if rose.update(image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazinggrazeflowers.com.au%2Fproducts%2Fchrysanthemum-bunch&psig=AOvVaw2kikpr6ZoUy3IRGlXrdR7V&ust=1690391271939000&source=images&cd=vfe&opi=89978449&ved=0CA0QjRxqFwoTCOCMjqusqoADFQAAAAAdAAAAABAE")
  puts "Plant 'Chrysanthemum' image_url updated successfully."
else
  puts "Unable to update plant 'Chrysanthemum' image_url. Errors: #{rose.errors.full_messages}"
end

if lily.update(image_url: "http://example.com/new_lily.jpg")
  puts "Plant 'Lily' image_url updated successfully."
else
  puts "Unable to update plant 'Lily' image_url. Errors: #{lily.errors.full_messages}"
end

rose.care_tasks.create(name: "Pruning", description: "Prune the rose plant", due_date: Date.today + 5)
lily.care_tasks.create(name: "Watering", description: "Water the lily plant", due_date: Date.today + 3)
lily.care_tasks.create(name: "Repotting", description: "Repot", due_date: Date.today + 7)

puts "✅ Done seeding!"
