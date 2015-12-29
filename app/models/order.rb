class Order < ActiveRecord::Base
  belongs_to :disk

  validates_presence_of :name, :email
end
