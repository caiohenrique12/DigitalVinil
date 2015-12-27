class Comment < ActiveRecord::Base
  belongs_to :disk

  scope :coment_usuario, ->(disk_id) { where("disk_id = #{disk_id}").order(created_at: :desc) }

end
