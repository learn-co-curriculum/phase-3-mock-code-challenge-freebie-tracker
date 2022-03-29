class Dev < ActiveRecord::Base
    has_many :freebies 
    has_many :companies through: :freebies

    def recieved_one?(item)
        self.freebies.pluck(:item_name).include?(item)
    end

    def give_away(dev, freebie)
        if self.recieved_one(freebie.item_name)
            freebie.update(dev_id: dev.id)
        else
            "Cannot give away something you dont own"
        end
    end

end
