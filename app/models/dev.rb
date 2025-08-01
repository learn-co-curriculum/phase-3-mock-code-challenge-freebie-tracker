class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    freebies.exists?(item_name: item_name)
  end

  def give_away(new_dev, freebie)
    if freebies.include?(freebie)
      freebie.update(dev_id: new_dev.id)
    else
      "Hey! That's not yours!"
    end
  end

end
