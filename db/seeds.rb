puts "🌱 Seeding spices..."

# Seed your database here
rose = Plant.create(name: "Rose", species: "Rosa", image_url: "http://example.com/rose.jpg")
lily = Plant.create(name: "Lily", species: "Lilium", image_url: "http://example.com/lily.jpg")

rose.care_tasks.create(name: "Watering", description: "Water the rose plant", due_date: Date.today + 2)
rose.care_tasks.create(name: "Pruning", description: "Prune the rose plant", due_date: Date.today + 5)

lily.care_tasks.create(name: "Watering", description: "Water the lily plant", due_date: Date.today + 3)
lily.care_tasks.create(name: "Fertilizing", description: "Fertilize the lily plant", due_date: Date.today + 7)
lily.care_tasks.create(name: "Repotting", description: "Repot the plant", due_date: Date.today + 7)

puts "✅ Done seeding!"
