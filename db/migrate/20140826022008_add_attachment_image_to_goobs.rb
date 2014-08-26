class AddAttachmentImageToGoobs < ActiveRecord::Migration
  def self.up
    change_table :goobs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :goobs, :image
  end
end
