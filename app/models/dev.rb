class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.exists?(item_name: item_name)
  end

  def give_away(dev, freebie)
    if freebie.dev == self
      freebie.dev = dev
      freebie.save
    end
end
