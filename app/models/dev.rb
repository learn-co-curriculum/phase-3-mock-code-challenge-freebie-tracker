class Dev < ActiveRecord::Base
  has_many :freebies 
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.find_by(item_name: item_name).present?
  end

  def give_away(dev, freebie)
    if self.freebies.exists?(freebie.id)
      freebie.update(dev: dev)
    end
  end
end
