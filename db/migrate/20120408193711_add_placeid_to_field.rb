class AddPlaceidToField < ActiveRecord::Migration
  def change
    add_column :fields, :place_id, :integer

  end
end
