class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

    def received_one?(item_name)
      return true if freebies.find_by(item_name: item_name)
      return false

      # if freebies.find_by(item_name: item_name)
      #   true
      # else
      #   false
      # end

      # freebies.pluck(:item_name).any?(item_name)
    end

    # Dev#give_away(dev, freebie)
    #     accepts a Dev instance and a Freebie instance,
    #      changes the freebie's dev to be the given dev;
    #       your code should only make the change if the 
    #       freebie belongs to the dev who's giving it 
    #       away

    def give_away(new_dev, freebie)
      if id == freebie.dev.id
        freebie.update(dev_id: new_dev.id)
      else
        "ITS NOT YOURS"
      end
    end
end
