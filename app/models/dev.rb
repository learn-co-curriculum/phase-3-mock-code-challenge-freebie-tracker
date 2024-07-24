class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    freebies.where(item_name: item_name).present?
  end

  def give_away(dev, freebie)
    return if freebie.dev != self

    freebie.update(dev: dev)
  end
end
