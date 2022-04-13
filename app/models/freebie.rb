class Freebie < ActiveRecord::Base
    belongs_to :company
    belongs_to :dev
    

    # Freebie # print_details
    # should return a string formatted as follows: {insert dev's name} owns a {insert freebie's item_name} from {insert company's name}
    def print_details

        return "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    
    end


end
