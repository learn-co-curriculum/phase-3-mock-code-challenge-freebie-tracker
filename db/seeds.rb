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
Freebies.create(dev: "Alex", company: "Starbucks", value: 1, item_name: "Sticky_Notes", founding_year: 2001)
Freebies.create(dev: "Chris", company: "Walmart", value: 2, item_name: "duffle_bag", founding_year: 1998)
Freebies.create(dev: "Steve", company: "DevWorld", value: 3, item_name: "belt", founding_year: 2002)

puts "Seeding done!"
