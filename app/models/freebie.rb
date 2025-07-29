class Freebie < ActiveRecord::Base
  belongs_to :company
  belongs_to :dev

  def print_details
    "#{self.dev.name} owns a #{self.item_name}"
  end

end
