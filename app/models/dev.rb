class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    freebies.exists?(item_name: item_name)
  end

  def give_away(dev, freebie)
    if freebie.dev_id == self.id
      freebie.update(dev: dev)  
    else 
      "Not yours to give away"
    end
  end
end
