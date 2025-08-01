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

Freebie.create(item_name: "Hoodie", value: 60, company_id: Company.first.id, dev_id: Dev.first.id)
Freebie.create(item_name: "Pen", value: 10, company_id: Company.second.id, dev_id: Dev.second.id)
Freebie.create(item_name: "Notebook", value: 20, company_id: Company.third.id, dev_id: Dev.third.id)
Freebie.create(item_name: "Socks", value: 10, company_id: Company.fourth.id, dev_id: Dev.fourth.id)

puts "Seeding done!"
