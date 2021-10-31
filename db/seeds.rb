puts "🌱 Seeding spices..."
Owner.destroy_all
Beehive.destroy_all

owner1 = Owner.create(first_name: "Tom", last_name: "Ehman")
owner2 = Owner.create(first_name: "Branden", last_name: "Ehman")

beehive1 = Beehive.create(queen_name: "Queen Latifah", type_of_bees: "Carniolan", number_of_boxes: 3, owner_id: owner1.id)
beehive2 = Beehive.create(queen_name: "Queen Taylor", type_of_bees: "Carniolan", number_of_boxes: 4, owner_id: owner1.id)
beehive3 = Beehive.create(queen_name: "Queen Beeast", type_of_bees: "Buckfast", number_of_boxes: 2, owner_id: owner2.id)
puts "✅ Done seeding!"
