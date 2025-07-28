puts 'Creating companies...'
google = Company.create(name: 'Google', founding_year: 1998)
facebook = Company.create(name: 'Facebook', founding_year: 2004)
dunder_mifflin = Company.create(name: 'Dunder Mifflin', founding_year: 2002)
enron = Company.create(name: 'Enron', founding_year: 1995)
microsoft = Company.create(name: 'Microsoft', founding_year: 1975)
apple = Company.create(name: 'Apple', founding_year: 1976)

puts 'Creating devs...'
rick = Dev.create(name: 'Rick')
morty = Dev.create(name: 'Morty')
mr_meseeks = Dev.create(name: 'Mr. Meseeks')
gazorpazop = Dev.create(name: 'Gazorpazop')
summer = Dev.create(name: 'Summer')
jerry = Dev.create(name: 'Jerry')

puts 'Creating freebies...'

# Google freebies
Freebie.create(item_name: 'T-Shirt', value: 15, company: google, dev: rick)
Freebie.create(item_name: 'Stickers', value: 3, company: google, dev: morty)
Freebie.create(item_name: 'Water Bottle', value: 12, company: google, dev: mr_meseeks)
Freebie.create(item_name: 'Hoodie', value: 45, company: google, dev: summer)
Freebie.create(item_name: 'Notebook', value: 8, company: google, dev: jerry)

# Facebook freebies
Freebie.create(item_name: 'T-Shirt', value: 18, company: facebook, dev: rick)
Freebie.create(item_name: 'Laptop Stickers', value: 5, company: facebook, dev: gazorpazop)
Freebie.create(item_name: 'Phone Case', value: 20, company: facebook, dev: morty)
Freebie.create(item_name: 'Tote Bag', value: 10, company: facebook, dev: mr_meseeks)
Freebie.create(item_name: 'Socks', value: 7, company: facebook, dev: summer)

# Microsoft freebies
Freebie.create(item_name: 'Wireless Mouse', value: 35, company: microsoft, dev: rick)
Freebie.create(item_name: 'Coffee Mug', value: 12, company: microsoft, dev: jerry)
Freebie.create(item_name: 'T-Shirt', value: 16, company: microsoft, dev: gazorpazop)
Freebie.create(item_name: 'USB Drive', value: 25, company: microsoft, dev: morty)
Freebie.create(item_name: 'Pen Set', value: 9, company: microsoft, dev: mr_meseeks)

# Apple freebies
Freebie.create(item_name: 'AirPods Case', value: 30, company: apple, dev: summer)
Freebie.create(item_name: 'T-Shirt', value: 20, company: apple, dev: rick)
Freebie.create(item_name: 'Stickers', value: 4, company: apple, dev: jerry)
Freebie.create(item_name: 'Laptop Stand', value: 40, company: apple, dev: gazorpazop)
Freebie.create(item_name: 'Keychain', value: 6, company: apple, dev: morty)

# Dunder Mifflin freebies
Freebie.create(item_name: 'Paper Samples', value: 5, company: dunder_mifflin, dev: jerry)
Freebie.create(item_name: 'Stapler', value: 15, company: dunder_mifflin, dev: mr_meseeks)
Freebie.create(item_name: 'Business Cards', value: 3, company: dunder_mifflin, dev: summer)
Freebie.create(item_name: 'Binder', value: 8, company: dunder_mifflin, dev: morty)

# Enron freebies
Freebie.create(item_name: 'Calculator', value: 22, company: enron, dev: gazorpazop)
Freebie.create(item_name: 'Desk Lamp', value: 28, company: enron, dev: rick)
Freebie.create(item_name: 'Stress Ball', value: 4, company: enron, dev: jerry)

# Some devs getting multiple items from same company
Freebie.create(item_name: 'Backpack', value: 50, company: google, dev: rick)
Freebie.create(item_name: 'Power Bank', value: 30, company: microsoft, dev: rick)
Freebie.create(item_name: 'Bluetooth Speaker', value: 60, company: apple, dev: morty)
Freebie.create(item_name: 'Wireless Charger', value: 35, company: facebook, dev: gazorpazop)

puts 'Seeding done!'
