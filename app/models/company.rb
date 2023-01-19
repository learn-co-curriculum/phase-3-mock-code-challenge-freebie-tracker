class Company < ActiveRecord::Base
    has_many :Dev, through: :freebie
    has_many :freebie

    def give_freebie(dev, item_name, value)
        Freebie.create(item_name: item_name, value: value, company:self)
    end

end
