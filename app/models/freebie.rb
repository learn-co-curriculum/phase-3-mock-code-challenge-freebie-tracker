class Freebie < ActiveRecord::Base
  belongs_to :company
  belongs_to :dev
end
