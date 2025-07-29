class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    freebie = Freebie.new(item_name: item_name, value: value, dev: dev, company: self)
    freebie.save
  end

  def self.oldest_company
    Company.order(:founding_year).first
  end
end
