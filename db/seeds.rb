Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
dev_rick = Dev.create(name: "Rick")
dev_morty = Dev.create(name: "Morty")
dev_meseeks = Dev.create(name: "Mr. Meseeks")
dev_gazorp = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

Freebie.create(item_name: "Pen", value: 5, dev: dev_rick, company: google)
Freebie.create(item_name: "Paper Clip", value: 3, dev: dev_morty, company: facebook)
Freebie.create(item_name: "Eraser", value: 25, dev: dev_rick, company: dunder)
Freebie.create(item_name: "Cup", value: 16, dev: dev_rick, company: enron)

puts "Seeding done!"
