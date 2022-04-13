class Freebie < ActiveRecord::Base

    belongs_to :dev
    belongs_to :company
    # f >- dev
    # f >- company



    # Freebie # print_details
    ##  should return a string 
    ### formatted as follows: 
    ##### {insert dev's name} owns a {insert freebie's item_name} from {insert company's name}
    #  #<f>.print_details
    def print_details

        #         self = #<f>
        #         self.dev = #<d>
        return "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"

    end

end




##  LolJK Deliveriables 

# - `Freebie#dev`
#   - returns the `Dev` instance for this Freebie
# - `Freebie#company`
#   - returns the `Company` instance for this Freebie