require 'pry'
class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    freebies.map(&:item_name).include?(item_name)
  end

  def give_away(dev, freebie)
    return unless freebie.dev_id == id

    freebie.dev_id = dev.id
    freebie.save
  end
end
