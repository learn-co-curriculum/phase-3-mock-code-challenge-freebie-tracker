class Freebie < ActiveRecord::Base
  belongs_to :company
  belongs_to :dev

  # we get this for free with active record
  # def dev
  #   Dev.find(self.dev_id)
  # end

  # we get this for free with active record
  # def company
  #   Company.find(self.company_id)
  # end
end
