puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

Freebie.create(item_name: "Google t-shirt", value: 5)
Freebie.create(item_name: "Facebook hat", value: 3)
Freebie.create(item_name: "Facebook t-shirt", value: 6)
Freebie.create(item_name: "Dunder Mifflin mittens", value: 100)
Freebie.create(item_name: "Enron pencil", value: 1)

puts "Seeding done!"
