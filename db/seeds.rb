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
Freebie.create(item_name: "Backpack", value: 10, company: Company.first, dev: Dev.first)
Freebie.create(item_name: "shirt", value: 5, company: Company.second, dev: Dev.second)
Freebie.create(item_name: "Grill", value: 100, company: Company.third, dev: Dev.third)
Freebie.create(item_name: "Socks", value: 2, company: Company.fourth, dev: Dev.fourth)

puts "Seeding done!"
