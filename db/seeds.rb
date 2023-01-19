puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
faebook = Company.create(name: "Facebook", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(item_name: "Shirt", value: 20, dev_id: rick.id, company_id: google.id)
Freebie.create(item_name: "Pen", value: 25, dev_id: morty .id, company_id: faebook.id)
Freebie.create(item_name: "Cup", value: 10, dev_id: meseeks.id, company_id: dunder.id)
Freebie.create(item_name: "Paper", value: 10, dev_id: gazorpazop.id, company_id: enron.id)
# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************

puts "Seeding done!"
