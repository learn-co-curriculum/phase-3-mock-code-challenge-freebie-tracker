class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.any? do |freebie|
      freebie.item_name == item_name
    end
  end

  def give_away(freebie, dev)
    freebie.update(dev: dev) unless freebie.dev != self
  end

end
