# C -<  [] F []  >- D

# Dependent Models
Freebie.destroy_all

# Independent Models
Dev.destroy_all
Company.destroy_all



puts "Creating companies..."
# case : a Company that gave 2 Freebies  ^.^
google = Company.create(name: "Google", founding_year: 1998)

meta   = Company.create(name: "Facebook", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)

# case : a Company that gave no Freebies  :(
enron  = Company.create(name: "Enron", founding_year: 1995)


puts "Creating devs..."
# case : a Company that has 2 Freebies  ^.^
rick  = Dev.create(name: "Rick")

morty = Dev.create(name: "Morty")
mr    = Dev.create(name: "Mr. Meseeks")

# case : a Dev with no Freebies  :(
gaz   = Dev.create(name: "Gazorpazop")


puts "Creating freebies..."
Freebie.create( 

    item_name: "shirt" , 
    value: 1,
    
    ## Foreign Keys
    company_id: google.id ,
    dev_id: rick.id 
    
)
Freebie.create( 

    item_name: "pen" , 
    value: 1,
    
    ## Foreign Keys
    company_id: google.id ,
    dev_id: rick.id
    
)
Freebie.create( 

    item_name: "flashdrive" , 
    value: 1,
    
    ## Foreign Keys
    company_id: meta.id ,
    dev_id: morty.id
    
)
Freebie.create( 

    item_name: "portable charger" , 
    value: 100,
    
    ## Foreign Keys
    company_id: dunder.id ,
    dev_id: mr.id
    
)
# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
