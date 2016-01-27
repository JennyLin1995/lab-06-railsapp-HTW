class Pumpkin < ActiveRecord::Base
  has_many :lineitems
  has_many :order, through: :lineitems
end
