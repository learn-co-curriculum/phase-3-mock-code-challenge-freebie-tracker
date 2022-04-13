class Company < ActiveRecord::Base
    has_many :freebies  # join model
    has_many :devs, through: :freebies



    # - `Company # give_freebie(dev, item_name, value)`

        ## - takes a `dev` (an instance of the `Dev` class), 
        ## an `item_name` (string), 
        ## and a `value` (integer)
        ##     as arguments,

    ### and creates a new `Freebie` instance 
    ### associated with this
    ### company and the given ( dev )  ;  company == self

    #  #<c>.give_freebie
    #  google_company.give_freebie
    def give_freebie( dev , item_name , value )

        puts "- in give_freebie -"

        Freebie.create( 

            item_name: item_name , 
            value: value ,
            
            ## Foreign Keys
            company_id: self.id ,
            dev_id: dev.id 
            
        )

    end


    # - `Company . oldest_company`
    # - returns the `Company` instance with the earliest founding year
    def self.oldest_company


        tracking_the_years = []

        #                 Company.all
        tracking_the_years = self.all.map do | that_company_instance | 
        
            that_company_instance.founding_year
        
        end
    

        return tracking_the_years.min




        # #                 Company.all
        # result_of_dot_map = self.all.map do | that_company_instance | 
        
        #     that_company_instance
        
        # end
    

        # return result_of_dot_map.minimum( :founding_year )
        # # return result_of_dot_each.minimum( :founding_year )



    end




end

# C -< F >- D



# - `Company#give_freebie(dev, item_name, value)`
#   - takes a `dev` (an instance of the `Dev` class), an `item_name` (string), and a `value`
#     as arguments, and creates a new `Freebie` instance associated with this
#     company and the given dev
# - `Company.oldest_company`
#   - returns the `Company` instance with the earliest founding year