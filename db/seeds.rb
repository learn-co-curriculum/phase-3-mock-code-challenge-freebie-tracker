Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder_mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
mr_meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

mug = Freebie.create(item_name: "Mug", value: 15, company: google, dev: rick)
shirt = Freebie.create(item_name: "Shirt", value: 20, company: facebook, dev: morty)
notebook = Freebie.create(item_name: "Notebook", value: 10, company: dunder_mifflin, dev: mr_meseeks)
pen = Freebie.create(item_name: "Pen", value: 5, company: enron, dev: gazorpazop)
sticker = Freebie.create(item_name: "Sticker", value: 5, company: google, dev: gazorpazop)
