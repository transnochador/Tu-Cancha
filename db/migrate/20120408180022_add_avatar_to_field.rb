class AddAvatarToField < ActiveRecord::Migration
  def self.up
    change_table :fields do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :fields, :avatar
  end

end
