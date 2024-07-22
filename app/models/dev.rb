class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.exists?(item_name: item_name)
  end

  def give_away(dev, freebie)
    return unless freebie.dev == self

    freebie.update(dev: dev)
  end
end
