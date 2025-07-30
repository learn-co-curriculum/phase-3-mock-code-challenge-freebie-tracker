class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    Freebie.create(
      item_name: item_name,
      value: value,
      dev_id: dev.id,
      company_id: self.id
      )
  end
end
