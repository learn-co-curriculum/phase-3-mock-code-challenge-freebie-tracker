puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gaz = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(item_name: "Keychain", item_value: 2, company_id: google.id, dev_id: morty.id)
Freebie.create(item_name: "Keychain", item_value: 2, company_id: facebook.id, dev_id: morty.id)
Freebie.create(item_name: "Phone Charger", item_value: 10, company_id: enron.id, dev_id: morty.id)
Freebie.create(item_name: "Pencil", item_value: 1, company_id: facebook.id, dev_id: rick.id)
Freebie.create(item_name: "Knife", item_value: 4, company_id: facebook.id, dev_id: meseeks.id)
Freebie.create(item_name: "Job Offer", item_value: 60_000, company_id: dunder.id, dev_id: gaz.id)
Freebie.create(item_name: "Job Offer", item_value: 200_000, company_id: facebook.id, dev_id: morty.id)

puts "Seeding done!"