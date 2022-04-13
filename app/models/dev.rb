class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies


    # - `Dev # received_one?(item_name)`
    # - accepts an `item_name` (string) and returns true if any of the freebies
    #     associated with the dev has that `item_name`, 
    #  otherwise returns false
   def received_one?( item_name ) 

        result_of_find = self.freebies.find do | each_frizz | 

            each_frizz.item_name == item_name  
        
        end

        if ( result_of_find )
            return true
        else 
            return false
        end

   end

   
    # - `Dev#give_away(dev, freebie)`
    # - accepts a `Dev` instance and 
    #  a `Freebie` instance, changes the freebie's dev
    #     to be the given dev; 
    #  your code should only make the change if the freebie
    #     belongs to the dev who's giving it away

   def give_away( dev_to_give_this_to , freebie )

        if ( self.id == freebie.dev.id )

            # freebie.dev_id = dev_to_give_this_to.id

            # freebie.save

            freebie.update(  dev_id: dev_to_give_this_to.id  )

        else
            return "THAT'S NOT YOURS!!!!"
        end

   end

   
end
