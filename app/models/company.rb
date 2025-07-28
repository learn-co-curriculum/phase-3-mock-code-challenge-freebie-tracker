class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    Freebie.create(dev: dev, company: self, item_name: item_name, value: value)
  end

  def self.oldest_company
    Company.all.order(founding_year: :asc).first
  end
end
