class Freebie < ActiveRecord::Base
    has_many :dev
    belongs_to :company


    def print_details
        "#{dev.name} owns a #{self.name} from #{company.name}"
    end
  
end
