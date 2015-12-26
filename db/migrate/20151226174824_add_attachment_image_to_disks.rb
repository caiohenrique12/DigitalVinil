class AddAttachmentImageToDisks < ActiveRecord::Migration
  def self.up
    change_table :disks do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :disks, :image
  end
end
