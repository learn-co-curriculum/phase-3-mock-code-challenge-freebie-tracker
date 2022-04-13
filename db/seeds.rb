Freebie.destroy_all

Dev.destroy_all
Company.destroy_all




puts "Creating companies..."
# CASE : frizz - gave 2
google = Company.create(name: "Google", founding_year: 1998)

meta   = Company.create(name: "Facebook", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)

# CASE : no frizz - give
enron  = Company.create(name: "Enron", founding_year: 1995)


puts "Creating devs..."
# CASE : frizz - got 2
rick  = Dev.create(name: "Rick")

morty = Dev.create(name: "Morty")
mr    = Dev.create(name: "Mr. Meseeks")

# CASE : no frizz - get
gaz   = Dev.create(name: "Gazorpazop")




puts "Creating freebies..."
Freebie.create(

    item_name: "red frizzbee" ,
    value: 1 ,

    company_id: google.id ,
    dev_id: rick.id

)
Freebie.create(

    item_name: "blue frizzbee" ,
    value: 2 ,

    company_id: google.id ,
    dev_id: rick.id

)
Freebie.create(

    item_name: "white frizzbee" ,
    value: 11 ,

    company_id: meta.id ,
    dev_id: morty.id

)
Freebie.create(

    item_name: "magenta frizzbee" ,
    value: 100 ,

    company_id: dunder.id ,
    dev_id: mr.id

)


# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
