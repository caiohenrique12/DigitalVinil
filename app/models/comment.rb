class Comment < ActiveRecord::Base
  belongs_to :disk

  scope :coment_usuario, ->(disk_id) { where("id = #{disk_id}") }

end
