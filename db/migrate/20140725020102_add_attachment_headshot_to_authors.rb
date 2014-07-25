class AddAttachmentHeadshotToAuthors < ActiveRecord::Migration
  def self.up
    change_table :authors do |t|
      t.attachment :headshot
    end
  end

  def self.down
    drop_attached_file :authors, :headshot
  end
end
