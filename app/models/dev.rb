class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  #get this from active record
  # def freebies
  #   Freebie.where(dev_id: self.id)
  # end

  #get this from active record
  # def companies
  #   Company.where(id: self.freebies.pluck(:company_id))
  # end
end
