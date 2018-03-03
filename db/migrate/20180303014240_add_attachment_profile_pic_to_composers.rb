class AddAttachmentProfilePicToComposers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :composers do |t|
      t.attachment :profile_pic
    end
  end

  def self.down
    remove_attachment :composers, :profile_pic
  end
end
