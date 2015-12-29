class Comment < ActiveRecord::Base
  belongs_to :disk

  validates_presence_of :name, :text

  scope :coment_usuario, ->(disk_id) { where("disk_id = #{disk_id}") }
end
