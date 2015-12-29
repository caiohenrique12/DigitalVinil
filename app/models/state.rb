class State < ActiveRecord::Base
  has_many :disks

  validates_presence_of :name
end
