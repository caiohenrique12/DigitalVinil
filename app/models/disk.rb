class Disk < ActiveRecord::Base
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :state
  has_many :orders
  has_many :comments

  validates_presence_of :name, :author, :address, :longitude, :latitude, :image, :price, :available, :recording_year,
                        :state_id

  validates_length_of :name, :author, :address, :longitude, :latitude, :image, :price, :available, :recording_year,
                      :state_id, allow_blank: false

end
