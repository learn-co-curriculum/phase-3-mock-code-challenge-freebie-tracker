class Company < ActiveRecord
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    Freebie.create(item_name: item_name, value: value, dev: developer, company: self)
  end

  def self.oldest_company
    Company.all.order(:founding_year).first
  end

end
