class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies


    # - `Company # give_freebie(dev, item_name, value)`
    # - takes a `dev` (an instance of the `Dev` class), 
    # an `item_name` (string), and a `value` (integer)
    #     as arguments, and creates a new `Freebie` instance associated with this
    #     company and the given dev
    def give_freebie( dev , item_name , value )

        Freebie.create(

            item_name: item_name ,
            value: value ,

            company_id: self.id ,
            dev_id: dev.id

        )

    end


    # - `Company . oldest_company`
    # - returns the `Company` instance with the earliest founding year
    def self.oldest_company 

            # new_array = self.all.map do | each_company | 

            #     each_company.founding_year
            
            # # end
            # new_array = self.all.map{ | each_company |  each_company.founding_year }
            
        earliest_year = self.all.map{ | each_company |  each_company.founding_year }.min

            # earliest_year = new_array.min

        self.all.find{ | that_company |  that_company.founding_year == earliest_year }
            # self.all.find do | that_company |

            #     that_company.founding_year == earliest_year

            # end

    end


end
