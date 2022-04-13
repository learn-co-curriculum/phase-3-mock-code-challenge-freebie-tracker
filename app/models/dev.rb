class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies



    #   - `Dev # received_one?(item_name)`
    #   - accepts an `item_name` (string) and returns true if any of the freebies
    #     associated with the dev has that `item_name`, otherwise returns false
    def received_one( item_name )


        result_of_find = self.freebies.find do | each_freebie_instance |

            each_freebie_instance.item_name == item_name
        
        end

        if( result_of_find ) # something_is_found

            return true

        else # nothing_is_found

            return false

        end


    end



    # - `Dev # give_away(dev, freebie)`
    #   - accepts a `Dev` instance and a `Freebie` instance, changes the freebie's dev
    #     to be the given dev; your code should only make the change if the freebie
    #     belongs_to the dev who's giving it away`
    def give_away( dev , freebie )

        # self == dev the method is called only
        # dev  == the dev being given the freebie

        if( self.id == freebie.dev.id )

            puts "- we got it -"

            freebie.dev_id = dev.id

            freebie.save

        else 
            return " Hey That's Not Yours Buddy! >:[ "
        end


    end


end



# D -< F >- C




# - `Dev#received_one?(item_name)`
#   - accepts an `item_name` (string) and returns true if any of the freebies
#     associated with the dev has that `item_name`, otherwise returns false
# - `Dev#give_away(dev, freebie)`
#   - accepts a `Dev` instance and a `Freebie` instance, changes the freebie's dev
#     to be the given dev; your code should only make the change if the freebie
#     belongs to the dev who's giving it away