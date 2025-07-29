class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  #get this from active record
  # def freebies
  #   Freebie.where(company_id: self.id)
  # end

  #get this from active record
  # def devs
  #   Dev.where(id: self.freebies.pluck(:dev_id))
  # end

  def give_freebie(dev, item_name, value)
    Freebie.create(company: self, dev: dev, item_name: item_name, value: value)
  end
end
