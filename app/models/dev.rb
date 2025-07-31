class Dev < ActiveRecord::Base
has_many :freebies

def received_one?(item_name)
  self.freebies.where(item_name: item_name) 
  end

  def give_away(dev, freebie)
  freebie = Freebie.find(freebie_id)
  freebie.update(dev: dev) if freebie.dev == self
  end
end
