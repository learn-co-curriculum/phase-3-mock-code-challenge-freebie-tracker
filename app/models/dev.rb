class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    freebies.any? { |freebie| freebie.item_name == item_name }
  end

  def give_away(dev, freebie)
    if freebie.dev == self
      freebie.update(dev: dev)
    else
      "Not My Freebie"
    end
  end
end
