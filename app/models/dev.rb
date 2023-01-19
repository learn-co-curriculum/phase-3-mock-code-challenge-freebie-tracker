class Dev < ActiveRecord::Base
    has_many :freebie
    has_many :company, through: :freebie
end
