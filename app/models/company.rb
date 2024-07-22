class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    Freebie.create(item_name: item_name, value: value, dev: dev, company: self)
  end

  def self.oldest_company
    self.order(founding_year: :asc).first
  end
end
