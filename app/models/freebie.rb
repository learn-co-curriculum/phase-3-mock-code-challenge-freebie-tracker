class Freebie < ActiveRecord::Base
    belong_to :company
    belong_to :dev

    def print_details
        "#{self.name} owns a #{self.item_name} from #{self.company}"
    end

end
