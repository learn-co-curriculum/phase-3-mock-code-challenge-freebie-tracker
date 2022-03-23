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

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "test", value: 20, company_id: 3, dev_id: 4)
Freebie.create(item_name: "test1", value: 1, company_id: 4, dev_id: 1)
Freebie.create(item_name: "test2", value: 64, company_id: 1, dev_id: 2)
Freebie.create(item_name: "test3", value: 77, company_id: 2, dev_id: 2)
Freebie.create(item_name: "test4", value: 25, company_id: 1, dev_id: 3)
Freebie.create(item_name: "test5", value: 50, company_id: 1, dev_id: 1)
Freebie.create(item_name: "test6", value: 2, company_id: 3, dev_id: 1)
Freebie.create(item_name: "test7", value: 80, company_id: 4, dev_id: 4)
Freebie.create(item_name: "test8", value: 120, company_id: 4, dev_id: 1)

puts "Seeding done!"
