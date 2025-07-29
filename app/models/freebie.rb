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

  def print_details
    "#{dev.name} owns a #{item_name} from #{company.name}"
  end
end
