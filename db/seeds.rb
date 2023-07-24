puts "🌱 Seeding spices..."

# Seed your database here
rose = Plant.create(name: "Rose", species: "Rosa", image_url: "http://example.com/rose.jpg")
lily = Plant.create(name: "Lily", species: "Lilium", image_url: "http://example.com/lily.jpg")

puts "✅ Done seeding!"
