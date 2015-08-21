class AddAttachmentPictureToPosts < ActiveRecord::Migration
  def self.up
    change_table :cocktails do |c|
      c.attachment :picture
    end
  end

  def self.down
    remove_attachment :cocktails, :picture
  end
end
