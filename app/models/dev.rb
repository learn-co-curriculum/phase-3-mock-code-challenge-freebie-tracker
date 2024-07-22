class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.exists?(item_name: item_name)
  end

  def give_away(dev, freebie)
    if self.freebies.include?(freebie)
      freebie.update(dev: dev)
    else
      puts "Have nothing to give"
    end
  end
end
