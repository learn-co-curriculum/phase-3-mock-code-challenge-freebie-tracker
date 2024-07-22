Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
company1 = Company.create(name: "Google", founding_year: 1998)
company2 = Company.create(name: "Facebook", founding_year: 2004)
company3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
company4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
dev1 = Dev.create(name: "Rick")
dev2 = Dev.create(name: "Morty")
dev3 = Dev.create(name: "Mr. Meseeks")
dev4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

Freebie.create(item_name: "Water Bottle", value: 10, company: company1, dev: dev1)
Freebie.create(item_name: "T-shirt", value: 20, company: company2, dev: dev2)
Freebie.create(item_name: "Sticker Pack", value: 5, company: company3, dev: dev3)
Freebie.create(item_name: "Mug", value: 15, company: company4, dev: dev4)
Freebie.create(item_name: "Notebook", value: 12, company: company1, dev: dev2)
Freebie.create(item_name: "USB Drive", value: 25, company: company2, dev: dev3)
puts "Seeding done!"

