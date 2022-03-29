class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs through: :freebies

    def give_freebie(dev, item, value)
        Freebie.create(dev_id: dev.id, company_id: self.id, item_name: item, value: value)        
    end

    def self.oldest_company
        all.min { |company| company.founding_year}
    end 

end
